// $OpenBSD: imon-compat.h,v 1.1.1.1 2007/04/27 22:00:55 jasper Exp $
//  $NetBSD: imon-compat.h,v 1.1 2004/10/17 19:20:53 jmmv Exp $
//
//  Copyright (c) 2004 Julio M. Merino Vidal.
//  
//  This program is free software; you can redistribute it and/or modify it
//  under the terms of version 2 of the GNU General Public License as
//  published by the Free Software Foundation.
//
//  This program is distributed in the hope that it would be useful, but
//  WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  Further, any
//  license provided herein, whether implied or otherwise, is limited to
//  this program in accordance with the express provisions of the GNU
//  General Public License.  Patent licenses, if any, provided herein do not
//  apply to combinations of this program with other product or programs, or
//  any other product whatsoever.  This program is distributed without any
//  warranty that the program is delivered free of the rightful claim of any
//  third person by way of infringement or the like.  See the GNU General
//  Public License for more details.
//
//  You should have received a copy of the GNU General Public License along
//  with this program; if not, write the Free Software Foundation, Inc., 59
//  Temple Place - Suite 330, Boston MA 02111-1307, USA.

#if !defined(IMON_COMPAT_H)
#define IMON_COMPAT_H

#if defined(HAVE_IMON)
#  error "cannot include imon-compat.h if imon is really present"
#endif

#define HAVE_IMON 1

typedef int intmask_t;

typedef struct {
    dev_t qe_dev;
    ino_t qe_inode;
    intmask_t qe_what;
} qelem_t;

#define IMON_CONTENT    (1 << 0)
#define IMON_ATTRIBUTE  (1 << 1)
#define IMON_DELETE     (1 << 2)
#define IMON_EXEC       (1 << 3)
#define IMON_EXIT       (1 << 4)
#define IMON_RENAME     (1 << 5)
#define IMON_OVER       0xff

#endif // !defined(IMON_COMPAT_H)
