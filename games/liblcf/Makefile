# $OpenBSD: Makefile,v 1.1.1.1 2017/09/09 19:52:02 jeremy Exp $

# Keep in sync with games/easyrpg
V =		0.5.2
COMMENT =	library for handling RPG Maker 2000/2003 data
DISTNAME =	${PKGNAME}{${V}}
PKGNAME =	liblcf-${V}
CATEGORIES =	games x11

SHARED_LIBS +=  lcf                       0.0 # 0.0

HOMEPAGE =	https://easyrpg.org/

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	https://github.com/EasyRPG/liblcf/archive/

WANTLIB += ${COMPILER_LIBCXX} expat icudata icui18n icuuc m

COMPILER =	base-clang ports-clang ports-gcc

LIB_DEPENDS =	textproc/icu4c

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15
CONFIGURE_STYLE =	autoconf automake
USE_LIBTOOL =		gnu
USE_GMAKE =		Yes
AUTOCONF =	AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOMAKE="automake --add-missing" \
		LIBTOOLIZE="${LOCALBASE}/bin/libtoolize" \
		autoreconf -i

WRKDIST =	${WRKDIR}/liblcf-${V}

.include <bsd.port.mk>
