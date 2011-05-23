/* $OpenBSD: glibtop_private.h,v 1.2 2011/05/23 19:35:53 jasper Exp $	*/

/* Copyright (C) 2007 Joe Marcus Clarke
   This file is part of LibGTop 2.0.

   LibGTop is free software; you can redistribute it and/or modify it
   under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2 of the License,
   or (at your option) any later version.

   LibGTop is distributed in the hope that it will be useful, but WITHOUT
   ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
   FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
   for more details.

   You should have received a copy of the GNU General Public License
   along with LibGTop; see the file COPYING. If not, write to the
   Free Software Foundation, Inc., 59 Temple Place - Suite 330,
   Boston, MA 02111-1307, USA.
*/

#ifndef __OPENBSD__GLIBTOP_PRIVATE_H__
#define __OPENBSD__GLIBTOP_PRIVATE_H__

#include <glibtop.h>
#include <glibtop/error.h>

#include <glib.h>

#include <sys/types.h>
#include <unistd.h>
#include <string.h>
#include <errno.h>

G_BEGIN_DECLS

char *execute_lsof(pid_t pid);
gboolean safe_readlink(const char *path, char *buf, int bufsiz);

G_END_DECLS

#endif /* __OPENBSD__GLIBTOP_PRIVATE_H__ */
