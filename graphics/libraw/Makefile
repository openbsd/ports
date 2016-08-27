# $OpenBSD: Makefile,v 1.20 2016/08/27 15:56:27 ajacoutot Exp $

BROKEN-arm =		undefined reference to __sync_fetch_and_add_4
BROKEN-hppa =		undefined reference to __sync_fetch_and_add_4
BROKEN-sparc =		undefined reference to __sync_fetch_and_add_4

COMMENT =		library for reading RAW files

V =			0.17.2
DISTNAME =		LibRaw-${V}
PKGNAME =		${DISTNAME:L}
CATEGORIES =		graphics

SHARED_LIBS +=  raw                  1.0      # 15.0
SHARED_LIBS +=  raw_r                1.0      # 15.0

HOMEPAGE =		http://www.libraw.org/

# LGPL v2.1 OR CDDL v1.0 OR their own
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c jasper jpeg lcms2 m pthread stdc++

MASTER_SITES =		http://www.libraw.org/data/

LIB_DEPENDS =		graphics/jasper \
			graphics/lcms2

SEPARATE_BUILD = 	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
