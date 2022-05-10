#include "compute_pi.hpp"
#include <stdlib.h>
#include <time.h>

double
getPoint()
{
  return (-1 + (double) (rand() / (double) (RAND_MAX/2)));
}

void*
compute_pi( void* arg )
{
  double x, y;
  int samples, sum=0;
  thread_data_t* thread = (thread_data_t*) arg;
  calc_t* pi = thread->pi_calc;
  samples = (pi->global_n_samples) / (pi->global_n_threads);
  if(thread->thread_id < (pi->global_n_samples % pi->global_n_threads)) samples++;
  srand(time(0));
  lock(&(pi->lock));
  for(int i=0; i<samples; i++)
  {
    x = getPoint();
    y = getPoint();
    if(((x*x)+(y*y)) <= 1) sum++;
  }
  pi->global_sum += sum;
  unlock(&(pi->lock));
  return NULL;
}
