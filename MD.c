/*
 *  Simple molecular dynamics code.
 *  $Id: MD-c.c,v 1.2 2002/01/31 16:43:14 spb Exp spb $
 *
 * This program implements:
 *     long range inverse square forces between particles. F = G * m1*m2 / r**2
 *     viscosity term     F = -u V
 * If 2 particles approach closer than Size we flip the direction of the
 * interaction force to approximate a collision.
 *
 * Coordinates are relative to a large central mass and the entire system is moving relative to the
 * viscous media.
 * If 2 particles approach closer than Size we flip the direction of the
 * interaction force to approximate a collision.
 *
 * This program was developed as part of a code optimisation course
 * and is therefore deliberately inefficient.
 *
 */
#include <math.h>
#include "coord.h"

void visc_force(int N,double *f, double *visc, double *vel);
void add_norm(int N,double *r, double *delta);
double force(double W, double delta, double r);
void wind_force(int N,double *f[Ndim], double *visc, double *pos[Ndim], double P[Ndim]);





void evolve(int count,double dt){
int  step;
int i,j,k,l;
double tmp_f,tmp_w1,tmp_v,tmp_w2;

/*
 * Loop over timesteps.
 */
      for(step = 1;step<=count;step++){
        printf("timestep %d\n",step);
        printf("collisions %d\n",collisions);

/* set the viscosity term in the force calculation */
        for(j=0;j<Ndim;j++){
          visc_force(Nbody,f[j],visc,vel[j]);
        }
/* add the wind term in the force calculation */
        wind_force(Nbody,f,visc,pos,P);
/* calculate distance from central mass */
        for(k=0;k<Nbody;k++){
          r[k] = 0.0;
        }
        for(i=0;i<Ndim;i++){
	  add_norm(Nbody,r,pos[i]);
        }
        for(k=0;k<Nbody;k++){
          r[k] = pow(r[k],1.5);
        }
       /* calculate central force */
        for(i=0;i<Nbody;i++){
          tmp_w1=G_M*mass[i];
	  for(l=0;l<Ndim;l++){
                f[l][i] = f[l][i] - 
                   force(tmp_w1,pos[l][i],r[i]);
	  }
	  
	}
/* calculate pairwise separation of particles */
        k = 0;
        for(i=0;i<Nbody;i++){
          for(j=i+1;j<Nbody;j++){
            for(l=0;l<Ndim;l++){
              delta_x[l][k] = pos[l][i] - pos[l][j];
            }
            k = k + 1;
          }
        }

/* calculate norm of seperation vector */
        for(k=0;k<Npair;k++){
          delta_r[k] = 0.0;
        }
        for(i=0;i<Ndim;i++){
	  add_norm(Npair,delta_r,delta_x[i]);
        }
        for(k=0;k<Npair;k++){
          delta_r[k] = pow(delta_r[k],1.5);
        }

/*
 * add pairwise forces.
 */
        k = 0;
        for(i=0;i<Nbody;i++){
          tmp_w1=G*mass[i];
          for(j=i+1;j<Nbody;j++){
            tmp_w2=tmp_w1*mass[j];
            for(l=0;l<Ndim;l++){
/*  flip force if close in */
	      tmp_f=force(tmp_w2,delta_x[l][k],delta_r[k]);
              if( delta_r[k] >= Size ){
                f[l][i] = f[l][i] - tmp_f;
                f[l][j] = f[l][j] + tmp_f;
              }else{
                f[l][i] = f[l][i] + tmp_f;
                f[l][j] = f[l][j] - tmp_f;
		collisions++;
              }
            }
            k = k + 1;
          }
        }

/* update positions */
        for(i=0;i<Nbody;i++){
          for(j=0;j<Ndim;j++){
            pos[j][i] = pos[j][i] + dt * vel[j][i];
          }
        }

/* update velocities */
        for(i=0;i<Nbody;i++){
          tmp_v = dt/mass[i];
          for(j=0;j<Ndim;j++){
            vel[j][i] = vel[j][i] + tmp_v*f[j][i];
          }
        }


      }

}




