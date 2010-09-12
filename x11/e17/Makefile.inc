# $OpenBSD: Makefile.inc,v 1.7 2010/09/12 16:49:10 jasper Exp $

CATEGORIES ?=		x11

HOMEPAGE ?=		http://www.enlightenment.org/

MASTER_SITES ?=		http://download.enlightenment.org/snapshots/2009-06-14/ \
			http://distfiles.nl/ \
			http://download.enlightenment.org/releases/ \
			ftp://ftp.vantronix.com/pub/mirrors/dlg/ \
			http://www.itee.uq.edu.au/~dlg/openbsd/

DIST_SUBDIR ?=		e17

CONFIGURE_STYLE ?=	gnu

MAINTAINER?=		Laurent FANIS <laurent@openbsd.org>

CFLAGS +=		-g
