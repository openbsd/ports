# $OpenBSD: Makefile,v 1.1.1.1 2014/07/11 15:07:13 bentley Exp $

COMMENT =		interpreter for some LucasArts 3D games

V =			0.1.1
DISTNAME =		residualvm-${V}-sources
PKGNAME =		residualvm-${V}

CATEGORIES =		games

HOMEPAGE =		http://residualvm.org/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU SDL c freetype m pthread stdc++ z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=residualvm/}

LIB_DEPENDS =		devel/sdl

USE_GMAKE =		Yes
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--enable-verbose-build \
			--mandir=${PREFIX}/man
CONFIGURE_ENV =		CPPFLAGS="-I${X11BASE}/include" \
			LDFLAGS="-L${X11BASE}/lib"

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/residualvm-${V}

.include <bsd.port.mk>
