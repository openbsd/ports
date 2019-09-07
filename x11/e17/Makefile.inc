# $OpenBSD: Makefile.inc,v 1.24 2019/09/07 13:16:47 naddy Exp $

CATEGORIES ?=		x11

HOMEPAGE ?=		https://www.enlightenment.org/

MASTER_SITES ?=		https://download.enlightenment.org/att/releases/
EXTRACT_SUFX ?=		.tar.bz2

DIST_SUBDIR ?=		e17

CONFIGURE_STYLE ?=	gnu

NO_TEST ?=		Yes

LIBTOOL_FLAGS ?=	--tag=disable-static

FULLARCH =		${MACHINE_ARCH:S/amd64/x86_64/}
SUBST_VARS +=		FULLARCH OSREV VERSION
