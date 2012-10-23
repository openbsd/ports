# $OpenBSD: Makefile.inc,v 1.14 2012/10/23 09:36:19 sthen Exp $

CATEGORIES ?=		x11

HOMEPAGE ?=		http://www.enlightenment.org/

MASTER_SITES ?=		http://download.enlightenment.org/releases/ \
			http://download.enlightenment.org/snapshots/LATEST/ \
			http://download.enlightenment.org/snapshots/2010-11-12/ \
			http://download.enlightenment.org/snapshots/2009-06-14/ \
			http://distfiles.nl/ \
			http://www.itee.uq.edu.au/~dlg/openbsd/

DIST_SUBDIR ?=		e17

CONFIGURE_STYLE ?=	gnu

MAINTAINER ?=		Laurent FANIS <laurent@openbsd.org>

NO_REGRESS ?=		Yes

#FLAVORS = debug
#FLAVOR ?=
#.if ${FLAVOR:L:Mdebug}
#CFLAGS +=		-O0 -g
#INSTALL_STRIP =
#.endif
