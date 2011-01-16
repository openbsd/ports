# $OpenBSD: Makefile.inc,v 1.11 2011/01/16 11:44:52 jasper Exp $

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
CONFIGURE_ARGS +=	--disable-silent-rules

MAINTAINER ?=		Laurent FANIS <laurent@openbsd.org>

NO_REGRESS ?=		Yes

#FLAVORS = debug
#FLAVOR ?=
#.if ${FLAVOR:L:Mdebug}
CFLAGS +=		-O0 -g
INSTALL_STRIP =
#.endif
