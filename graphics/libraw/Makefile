# $OpenBSD: Makefile,v 1.11 2014/09/22 08:25:57 jasper Exp $

COMMENT =		library for reading RAW files
BROKEN-hppa =		undefined reference to __sync_fetch_and_add_4
BROKEN-mips64 =		undefined reference to __sync_fetch_and_add_4

V =			0.16.0
DISTNAME =		LibRaw-${V}
PKGNAME =		${DISTNAME:L}
CATEGORIES =		graphics

SHARED_LIBS +=  raw                  0.0      # 10.0
SHARED_LIBS +=  raw_r                0.0      # 10.0

HOMEPAGE =		http://www.libraw.org/

# LGPL v2.1 OR CDDL v1.0 OR their own
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c jasper jpeg lcms2 m pthread stdc++

MASTER_SITES =		http://www.libraw.org/data/

LIB_DEPENDS =		graphics/jasper \
			graphics/lcms2

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED}

.include <bsd.port.mk>
