/*	$OpenBSD: pgwrap.h,v 1.2 2001/02/22 19:28:13 danh Exp $	*/
/*	$RuOBSD: pgwrap.h,v 1.2 2001/01/05 09:06:57 form Exp $	*/

/*
 * Copyright (c) 1999 Oleg Safiullin
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice unmodified, this list of conditions, and the following
 *    disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 */

#ifndef __PGWRAP_H__
#define __PGWRAP_H__

#ifndef PGUSER
# define PGUSER "pgsql"
#endif

#ifndef PGBIN
# define PGBIN "/usr/local/bin"
#endif

#ifndef PGLIB
# define PGLIB "/usr/local/lib/pgsql"
#endif

#ifndef PGDATA
# define PGDATA "/var/pgsql/data"
#endif

#ifndef PGPATH
# define PGPATH (PGBIN ":" _PATH_DEFPATH)
#endif

#ifndef PGSHELL
# define PGSHELL _PATH_BSHELL
#endif

#endif	/* __PGWRAP_H__ */
