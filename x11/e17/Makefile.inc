# $OpenBSD: Makefile.inc,v 1.22 2016/03/16 20:02:12 naddy Exp $

CATEGORIES ?=		x11

HOMEPAGE ?=		http://www.enlightenment.org/

MASTER_SITES ?=		http://download.enlightenment.org/releases/

DIST_SUBDIR ?=		e17

CONFIGURE_STYLE ?=	gnu

NO_TEST ?=		Yes

LIBTOOL_FLAGS ?=	--tag=disable-static

FULLARCH =		${MACHINE_ARCH:S/amd64/x86_64/}
SUBST_VARS +=		FULLARCH OSREV VERSION
