# $OpenBSD: Makefile,v 1.7 2019/07/12 20:46:17 sthen Exp $

V =		3.1
COMMENT =	modern QuakeWorld client
DISTNAME =	ezquake-source-${V}
PKGNAME =	ezquake-${V}
CATEGORIES =	games
REVISION =	3

HOMEPAGE =	https://ezquake.github.io/
MAINTAINER =	Tom Murphy <openbsd@pertho.net>

# GPLv2+
PERMIT_PACKAGE =	Yes

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

GAMEDIR =	${PREFIX}/share/ezquake
SUBST_VARS +=	GAMEDIR

do-configure:
	${SUBST_CMD} ${WRKSRC}/EX_browser_sources.c

do-install:
	${INSTALL_PROGRAM}  ${WRKSRC}/ezquake ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${GAMEDIR}
	@cp ${WRKSRC}/misc/sb/*.txt ${GAMEDIR}/

.include <bsd.port.mk>
