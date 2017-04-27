# $OpenBSD: Makefile,v 1.24 2017/04/27 23:15:00 sthen Exp $

BROKEN-hppa =		undefined reference to __sync_fetch_and_add_4

COMMENT =		library for reading RAW files

V =			0.17.2
DISTNAME =		LibRaw-${V}
PKGNAME =		${DISTNAME:L}
REVISION =		0
CATEGORIES =		graphics

SHARED_LIBS +=  raw                  1.0      # 15.0
SHARED_LIBS +=  raw_r                1.0      # 15.0

HOMEPAGE =		http://www.libraw.org/

# LGPL v2.1 OR CDDL v1.0 OR their own
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c jasper jpeg lcms2 m pthread ${LIBCXX}

MASTER_SITES =		http://www.libraw.org/data/

MODULES =		gcc4
# for atomic builtins (__sync_fetch_and_add_4)
MODGCC4_ARCHS =		arm
MODGCC4_LANGS =		c++

LIB_DEPENDS =		graphics/jasper \
			graphics/lcms2

SEPARATE_BUILD = 	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
