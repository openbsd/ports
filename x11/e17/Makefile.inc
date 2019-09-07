# $OpenBSD: Makefile.inc,v 1.23 2019/09/07 11:48:33 naddy Exp $

CATEGORIES ?=		x11

HOMEPAGE ?=		http://www.enlightenment.org/

MASTER_SITES ?=		https://download.enlightenment.org/att/releases/
EXTRACT_SUFX ?=		.tar.bz2

DIST_SUBDIR ?=		e17

CONFIGURE_STYLE ?=	gnu

NO_TEST ?=		Yes

LIBTOOL_FLAGS ?=	--tag=disable-static

FULLARCH =		${MACHINE_ARCH:S/amd64/x86_64/}
SUBST_VARS +=		FULLARCH OSREV VERSION
