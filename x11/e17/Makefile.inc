# $OpenBSD: Makefile.inc,v 1.16 2013/01/08 08:13:28 jasper Exp $

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

NO_REGRESS ?=		Yes

SHARED_ONLY ?=		Yes
LIBTOOL_FLAGS ?=	--tag=disable-static

#FLAVORS = debug
#FLAVOR ?=
#.if ${FLAVOR:L:Mdebug}
#CFLAGS +=		-O0 -g
#INSTALL_STRIP =
#.endif
