#include "lock.hpp"

void
init( lock_t* lock )
{
  lock->ticket=0;
  lock->turn=0;
  return;
}

void
lock( lock_t* lock )
{
  int turn = __sync_fetch_and_add(&(lock->ticket), 1);
  while((lock->turn) != turn) sched_yield();
  return;
}

void
unlock( lock_t* lock )
{
  __sync_fetch_and_add(&(lock->turn), 1);
  return;
}

void destroy( lock_t* lock )
{
  return;
}

