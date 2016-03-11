# $OpenBSD: Makefile,v 1.19 2016/03/11 19:59:15 naddy Exp $

COMMENT =		library for reading RAW files
BROKEN-arm =		undefined reference to __sync_fetch_and_add_4
BROKEN-hppa =		undefined reference to __sync_fetch_and_add_4
BROKEN-sparc =		undefined reference to __sync_fetch_and_add_4

V =			0.17.1
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

.include <bsd.port.mk>
