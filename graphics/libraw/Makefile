# $OpenBSD: Makefile,v 1.27 2017/07/26 22:45:24 sthen Exp $

BROKEN-hppa =		undefined reference to __sync_fetch_and_add_4

COMMENT =		library for reading RAW files

DISTNAME =		LibRaw-0.18.2
PKGNAME =		${DISTNAME:L}
CATEGORIES =		graphics
REVISION =		0

SHARED_LIBS +=  raw                  2.0      # 15.0
SHARED_LIBS +=  raw_r                2.0      # 15.0

HOMEPAGE =		https://www.libraw.org/

# LGPL v2.1 OR CDDL v1.0 OR their own
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c jasper jpeg lcms2 m pthread ${COMPILER_LIBCXX}

MASTER_SITES =		https://www.libraw.org/data/

COMPILER =		gcc
# for atomic builtins (__sync_fetch_and_add_4)
MODGCC4_ARCHS =		arm

LIB_DEPENDS =		graphics/jasper \
			graphics/lcms2

SEPARATE_BUILD = 	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
