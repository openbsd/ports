# $OpenBSD: Makefile.inc,v 1.13 2011/06/02 17:35:47 kili Exp $

CATEGORIES ?=		x11

HOMEPAGE ?=		http://www.enlightenment.org/

MASTER_SITES ?=		http://download.enlightenment.org/releases/ \
			http://download.enlightenment.org/snapshots/LATEST/ \
			http://download.enlightenment.org/snapshots/2010-11-12/ \
			http://download.enlightenment.org/snapshots/2009-06-14/ \
			http://distfiles.nl/ \
                        ftp://ftp.vantronix.com/pub/mirrors/dlg/ \
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
