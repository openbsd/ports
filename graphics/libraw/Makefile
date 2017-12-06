# $OpenBSD: Makefile,v 1.30 2017/12/06 17:46:51 sthen Exp $

COMMENT =		library for reading RAW files

DISTNAME =		LibRaw-0.18.5
PKGNAME =		${DISTNAME:L}
CATEGORIES =		graphics

SHARED_LIBS +=  raw                  2.0      # 15.0
SHARED_LIBS +=  raw_r                2.0      # 15.0

HOMEPAGE =		https://www.libraw.org/

MAINTAINER =		Rafael Sadowski <rsadowski@openbsd.org>

# LGPL v2.1 OR CDDL v1.0 OR their own
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c jasper jpeg lcms2 m pthread ${COMPILER_LIBCXX}

MASTER_SITES =		https://www.libraw.org/data/

MODULES =		gcc4
# for atomic builtins (__sync_fetch_and_add_4)
# XXX remove when armv7 switches to clang in base?
MODGCC4_ARCHS =		arm hppa
MODGCC4_LANGS =		c++

LIB_DEPENDS =		graphics/jasper \
			graphics/lcms2

SEPARATE_BUILD = 	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
