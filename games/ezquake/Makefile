# $OpenBSD: Makefile,v 1.4 2018/09/15 18:54:54 bcallah Exp $

V =		3.1
COMMENT =	modern QuakeWorld client
DISTNAME =	ezquake-source-${V}
PKGNAME =	ezquake-${V}
CATEGORIES =	games
REVISION =	1

HOMEPAGE =	https://ezquake.github.io/
MAINTAINER =	Tom Murphy <openbsd@pertho.net>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL SDL2 c curl expat jansson jpeg m pcre png pthread
WANTLIB += speex speexdsp z

MASTER_SITES =	https://github.com/ezQuake/ezquake-source/releases/download/${V}/

LIB_DEPENDS =	audio/speex \
		graphics/jpeg \
		graphics/png \
		devel/sdl2 \
		devel/jansson \
		devel/pcre \
		net/curl

USE_GMAKE =	Yes
MAKE_ENV =	V=1
WRKDIST =	${WRKDIR}

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ezquake ${PREFIX}/bin

.include <bsd.port.mk>
