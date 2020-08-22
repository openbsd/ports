# $OpenBSD: Makefile,v 1.45 2020/08/22 08:21:40 rsadowski Exp $

COMMENT =		library for reading RAW files

DISTNAME =		LibRaw-0.20.0
PKGNAME =		${DISTNAME:L}
CATEGORIES =		graphics

SHARED_LIBS +=  raw                  4.1      # 15.0
SHARED_LIBS +=  raw_r                4.1      # 15.0

HOMEPAGE =		https://www.libraw.org/

MAINTAINER =		Rafael Sadowski <rsadowski@openbsd.org>

# LGPL v2.1 OR CDDL v1.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c jasper jpeg lcms2 m z

MASTER_SITES =		https://www.libraw.org/data/

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		graphics/jasper \
			graphics/lcms2

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
