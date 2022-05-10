#include "lock.hpp"

void
init( lock_t* lock )
{
  lock->S = 1;
  pthread_mutex_init(&(lock->mutex), NULL);
  return;
}

void
lock( lock_t* lock )
{
  __sync_fetch_and_sub(&lock->S, 1);
  if((lock->S) < 0) pthread_mutex_lock(&(lock->mutex));
  return;
}

void
unlock( lock_t* lock )
{
  __sync_fetch_and_add(&lock->S, 1);
  pthread_mutex_unlock(&(lock->mutex));
  return;
}

void destroy( lock_t* lock )
{
  pthread_mutex_destroy(&(lock->mutex));
  return;
}
