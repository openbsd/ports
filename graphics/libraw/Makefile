# $OpenBSD: Makefile,v 1.6 2013/03/21 08:45:18 ajacoutot Exp $

COMMENT =		library for reading RAW files

V =			0.14.5
DISTNAME =		LibRaw-${V}
PKGNAME =		${DISTNAME:L}
CATEGORIES =		graphics

SHARED_LIBS +=  raw                  0.0      # 5.0
SHARED_LIBS +=  raw_r                0.0      # 5.0

HOMEPAGE =		http://www.libraw.org/

# LGPL v2.1 OR CDDL v1.0 OR their own
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c jasper lcms2 m pthread stdc++

MASTER_SITES =		http://www.libraw.org/data/
NO_TEST =		Yes

LIB_DEPENDS =		graphics/jasper \
			graphics/lcms2


CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			 LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS =	${CONFIGURE_SHARED}

.include <bsd.port.mk>
