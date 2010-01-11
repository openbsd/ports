# $OpenBSD: Makefile.inc,v 1.6 2010/01/11 14:58:35 jasper Exp $

CATEGORIES ?=		x11

HOMEPAGE ?=		http://www.enlightenment.org/

MASTER_SITES ?=		http://download.enlightenment.org/snapshots/2009-06-14/ \
			http://www.phil.uu.nl/~lievisse/distfiles/e17/ \
			http://download.enlightenment.org/releases/ \
			ftp://ftp.vantronix.com/pub/mirrors/dlg/ \
			http://www.itee.uq.edu.au/~dlg/openbsd/

DIST_SUBDIR ?=		e17

CONFIGURE_STYLE ?=	gnu

MAINTAINER?=		Laurent FANIS <laurent@openbsd.org>

CFLAGS +=		-g
