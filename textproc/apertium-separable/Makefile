# $OpenBSD: Makefile,v 1.5 2021/11/15 04:23:36 bentley Exp $

COMMENT =		reorder separable/discontinuous multiwords

V =			0.3.6
DISTNAME =		apertium-separable-$V

CATEGORIES =		textproc

HOMEPAGE =		https://www.apertium.org/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# GPLv2+
PERMIT_PACKAGE =	Yes

# uses pledge()

WANTLIB += ${COMPILER_LIBCXX} apertium3-3.7 c lttoolbox3-3.5 m xml2

MASTER_SITES =		https://github.com/apertium/apertium-separable/releases/download/v$V/

EXTRACT_SUFX =		.tar.bz2

# c++20
COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		textproc/apertium>=3.5.1 \
			textproc/lttoolbox>=3.4.2

USE_GMAKE =		Yes

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
