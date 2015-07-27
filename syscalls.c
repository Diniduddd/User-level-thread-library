/* this is where you should implement your system calls
 * Only C stubs goes here. Should use the asm code in lib.S
 */

#include <assert.h>
#include "mylib.h"
/* NOTE: cannot use stdlib or stdio */

int my_fork()
{ 
  /* implement fork using generic_syscall function */
  return generic_syscall(2);
  assert(0);
}

int my_getpid()
{
  /* implement getpid using generic_syscall function */
  return generic_syscall(20);
  assert(0);
}

int my_getppid()
{
  /* implement getppid using generic_syscall function */
   return generic_syscall(64);
  assert(0);
}
