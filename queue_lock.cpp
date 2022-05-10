#include "lock.hpp"

void
init( lock_t* lock )
{
  lock->flag = 0;
  lock->guard = 0;
  queue_init(lock->queue);
  return;
}

void
lock( lock_t* lock )
{
  while(__sync_lock_test_and_set(&(lock->guard), 1) == 1);
  if(lock->flag == 0)
  {
    lock->flag = 1;
    lock->guard = 0;
  }
  else
  {
    queue_add(lock->queue, gettid());
    lock->guard = 0;
    pause();
  }
  return;
}

void
unlock( lock_t* lock )
{
  while(__sync_lock_test_and_set(&(lock->guard), 1) == 1);
  if(queue_empty(lock->queue)) lock->flag = 0;
  else
  {
    queue_remove(lock->queue);
    SIGCONT;
  }
  lock->guard = 0;
  return;
}

void destroy( lock_t* lock )
{
  return;
}
