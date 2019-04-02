# $OpenBSD: Makefile,v 1.3 2019/04/02 09:01:55 naddy Exp $

# Keep in sync with games/easyrpg
COMMENT =	library for handling RPG Maker 2000/2003 data
CATEGORIES =	games x11

SHARED_LIBS +=  lcf                       1.0 # 1.0

HOMEPAGE =	https://easyrpg.org/

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes

GH_ACCOUNT =	EasyRPG
GH_PROJECT =	liblcf
GH_TAGNAME =	0.5.3

WANTLIB += ${COMPILER_LIBCXX} expat icudata icui18n icuuc m

COMPILER =	base-clang ports-clang ports-gcc

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
LIB_DEPENDS =	textproc/icu4c

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15
CONFIGURE_STYLE =	gnu
USE_LIBTOOL =		gnu
USE_GMAKE =		Yes

do-gen:
	cd ${WRKSRC}; ${AUTOCONF_ENV} autoreconf -fi

.include <bsd.port.mk>
