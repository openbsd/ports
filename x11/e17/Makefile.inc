# $OpenBSD: Makefile.inc,v 1.18 2013/02/09 14:49:53 sthen Exp $

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

FULLARCH =		${MACHINE_ARCH:S/amd64/x86_64/}
SUBST_VARS +=		FULLARCH OSREV VERSION

#FLAVORS = debug
#FLAVOR ?=
#.if ${FLAVOR:Mdebug}
#CFLAGS +=		-O0 -g
#INSTALL_STRIP =
#.endif
