/*
 * Copyright (c) 2013 Miodrag Vallat.
 *
 * Permission is hereby granted, free of charge, to any person obtaining
 * a copy of this software and associated documentation files (the
 * ``Software''), to deal in the Software without restriction, including
 * without limitation the rights to use, copy, modify, merge, publish,
 * distribute, sublicense, and/or sell copies of the Software, and to
 * permit persons to whom the Software is furnished to do so, subject to
 * the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included
 * in all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED ``AS IS'', WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
 * IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
 * CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
 * TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
 * SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

/*
 * vax Foreign Function Interface
 *
 * This file attempts to provide all the FFI entry points which can reliably
 * be implemented in C.
 *
 * Support is currently limited to a.out BSD systems using the non-reentrant
 * PCC structure return convention.
 *
 * Closure support is not implemented yet.
 */

#include <ffi.h>
#include <ffi_common.h>

#include <stdlib.h>
#include <unistd.h>

#define CIF_FLAGS_INT		1
#define CIF_FLAGS_DINT		2

/*
 * Foreign Function Interface API
 */

void *ffi_call_aoutbsd (extended_cif *, unsigned, unsigned, void *,
			void (*) ());
void *ffi_prep_args (extended_cif *ecif, void *stack);

void *
ffi_prep_args (extended_cif *ecif, void *stack)
{
  unsigned int i;
  void **p_argv;
  char *argp;
  ffi_type **p_arg;

  argp = stack;

  p_argv = ecif->avalue;

  for (i = ecif->cif->nargs, p_arg = ecif->cif->arg_types;
       i != 0;
       i--, p_arg++)
    {
      size_t z;

      z = (*p_arg)->size;
      if (z < sizeof (int))
	{
	  switch ((*p_arg)->type)
	    {
	    case FFI_TYPE_SINT8:
	      *(signed int *) argp = (signed int) *(SINT8 *) *p_argv;
	      break;

	    case FFI_TYPE_UINT8:
	      *(unsigned int *) argp = (unsigned int) *(UINT8 *) *p_argv;
	      break;

	    case FFI_TYPE_SINT16:
	      *(signed int *) argp = (signed int) *(SINT16 *) *p_argv;
	      break;

	    case FFI_TYPE_UINT16:
	      *(unsigned int *) argp = (unsigned int) *(UINT16 *) *p_argv;
	      break;

	    case FFI_TYPE_STRUCT:
	      memcpy (argp, *p_argv, z);
	      break;

	    default:
	      FFI_ASSERT (0);
	    }
	  z = sizeof (int);
	}
      else
	{
	  memcpy (argp, *p_argv, z);

	  /* Align if necessary.  */
	  if ((sizeof(int) - 1) & z)
	    z = ALIGN(z, sizeof(int));
	}

      p_argv++;
      argp += z;
    }

  return NULL;
}

ffi_status
ffi_prep_cif_machdep (ffi_cif *cif)
{
  /* Set the return type flag */
  switch (cif->rtype->type)
    {
    case FFI_TYPE_VOID:
      cif->flags = 0;
      break;

    case FFI_TYPE_STRUCT:
      cif->flags = 0;	/* structs are always passed on the stack */
      break;

    default:
      if (cif->rtype->size <= sizeof (int))
	cif->flags = CIF_FLAGS_INT;
      else
	cif->flags = CIF_FLAGS_DINT;
      break;
    }

  return FFI_OK;
}

void
ffi_call (ffi_cif *cif, void (*fn) (), void *rvalue, void **avalue)
{
  extended_cif ecif;
  void *r0;

  ecif.cif = cif;
  ecif.avalue = avalue;
  ecif.rvalue = rvalue;

  switch (cif->abi)
    {
    case FFI_AOUTBSD:
      r0 = ffi_call_aoutbsd (&ecif, cif->bytes, cif->flags, rvalue, fn);
      /* copy the struct return value if asked for */
      if (cif->rtype->type == FFI_TYPE_STRUCT && rvalue != NULL)
	memcpy(rvalue, r0, cif->rtype->size);
      break;

    default:
      FFI_ASSERT (0);
      break;
    }
}

/*
 * Closure API
 */

void ffi_closure_aoutbsd (void);
void ffi_closure_struct_aoutbsd (void);
unsigned int ffi_closure_aoutbsd_inner (ffi_closure *, void *, char *);

static void
ffi_prep_closure_aoutbsd (ffi_cif *cif, void **avalue, char *stackp)
{
  unsigned int i;
  void **p_argv;
  ffi_type **p_arg;

  p_argv = avalue;

  for (i = cif->nargs, p_arg = cif->arg_types; i != 0; i--, p_arg++)
    {
      size_t z;

      z = (*p_arg)->size;
      *p_argv = stackp;

      /* Align if necessary */
      if ((sizeof (int) - 1) & z)
	z = ALIGN(z, sizeof (int));

      p_argv++;
      stackp += z;
    }
}

unsigned int
ffi_closure_aoutbsd_inner (ffi_closure *closure, void *resp, char *stack)
{
  ffi_cif *cif;
  void **arg_area;

  cif = closure->cif;
  arg_area = (void **) alloca (cif->nargs * sizeof (void *));

  ffi_prep_closure_aoutbsd (cif, arg_area, stack);

  (closure->fun) (cif, resp, arg_area, closure->user_data);

  return cif->flags;
}

ffi_status
ffi_prep_closure_loc (ffi_closure *closure, ffi_cif *cif,
		      void (*fun)(ffi_cif *, void *, void **, void *),
		      void *user_data, void *codeloc)
{
  char *tramp = (char *) codeloc;
  void *fn;
  void *rvalue;
  unsigned int offset;

  FFI_ASSERT (cif->abi == FFI_AOUTBSD);

  /* entry mask */
  *(unsigned short *)(tramp + 0) = 0x0000;
  /* movl #closure, r0 */
  tramp[2] = 0xd0;
  tramp[3] = 0x8f;
  *(unsigned int *)(tramp + 4) = (unsigned int) closure;
  tramp[8] = 0x50;

  if (cif->rtype->type == FFI_TYPE_STRUCT)
    {
      fn = &ffi_closure_struct_aoutbsd;

      /*
       * PCC struct return method uses a temporary struct image in bss, and
       * has the function return its address in r0.
       * Since we can't pick this memory on the stack, we need to allocate
       * memory here.  Unfortunately, there is no simple way to deallocate
       * this extra memory when the ffi_closure is freed...
       */
      rvalue = malloc (cif->rtype->size);
      if (!rvalue)
	return FFI_BAD_ABI; /* here's a nickel kid, get yourself a better ABI */

      /* movl #rvalue, r1 */
      tramp[9] = 0xd0;
      tramp[10] = 0x8f;
      *(unsigned int *)(tramp + 11) = (unsigned int) rvalue;
      tramp[15] = 0x51;

      offset = 16;
    }
  else
    {
      fn = &ffi_closure_aoutbsd;
      offset = 9;
    }

  /* jmpl #fn */
  tramp[offset] = 0x17;
  tramp[offset + 1] = 0xef;
  *(unsigned int *)(tramp + offset + 2) = (unsigned int)fn + 2 -
					  (unsigned int)tramp - offset - 6;

  closure->cif = cif;
  closure->user_data = user_data;
  closure->fun = fun;

  return FFI_OK;
}
