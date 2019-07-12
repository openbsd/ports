# $OpenBSD: Makefile,v 1.5 2019/07/12 20:46:20 sthen Exp $

# Keep in sync with games/easyrpg
COMMENT =	library for handling RPG Maker 2000/2003 data
CATEGORIES =	games x11

SHARED_LIBS +=  lcf                       1.0 # 1.0

HOMEPAGE =	https://easyrpg.org/

# GPLv3+
PERMIT_PACKAGE =		Yes

GH_ACCOUNT =	EasyRPG
GH_PROJECT =	liblcf
GH_TAGNAME =	0.5.3

WANTLIB += ${COMPILER_LIBCXX} expat icudata icui18n icuuc m

COMPILER =	base-clang ports-clang ports-gcc

LIB_DEPENDS =	textproc/icu4c

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15
CONFIGURE_STYLE =	autoreconf
USE_LIBTOOL =		gnu
USE_GMAKE =		Yes

.include <bsd.port.mk>
