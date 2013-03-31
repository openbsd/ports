# $OpenBSD: Makefile.inc,v 1.20 2013/03/31 18:48:00 rpe Exp $

CATEGORIES ?=		x11

HOMEPAGE ?=		http://www.enlightenment.org/

MASTER_SITES ?=		http://download.enlightenment.org/releases/

DIST_SUBDIR ?=		e17

CONFIGURE_STYLE ?=	gnu

NO_TEST ?=		Yes

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
