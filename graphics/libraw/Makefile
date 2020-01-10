# $OpenBSD: Makefile,v 1.44 2020/01/10 11:19:33 jca Exp $

COMMENT =		library for reading RAW files

DISTNAME =		LibRaw-0.19.5
PKGNAME =		${DISTNAME:L}
REVISION =		0
CATEGORIES =		graphics

SHARED_LIBS +=  raw                  4.0      # 15.0
SHARED_LIBS +=  raw_r                4.0      # 15.0

HOMEPAGE =		https://www.libraw.org/

MAINTAINER =		Rafael Sadowski <rsadowski@openbsd.org>

# LGPL v2.1 OR CDDL v1.0
PERMIT_PACKAGE =	Yes

WANTLIB += c jasper jpeg lcms2 m pthread ${COMPILER_LIBCXX}

MASTER_SITES =		https://www.libraw.org/data/

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		graphics/jasper \
			graphics/lcms2

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
