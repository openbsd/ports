# $OpenBSD: Makefile,v 1.9 2020/07/30 11:40:29 solene Exp $

N =		ezquake
V =		3.2.1
COMMENT =	modern QuakeWorld client

PKGNAME =	${N}-${V}
GH_ACCOUNT =	ezQuake
GH_PROJECT =	${N}-source
GH_TAGNAME =	${V}

CATEGORIES =	games

HOMEPAGE =	https://ezquake.github.io/
MAINTAINER =	Tom Murphy <openbsd@pertho.net>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += GL SDL2 c curl expat jansson jpeg m pcre png pthread
WANTLIB += speex speexdsp z

LIB_DEPENDS =	audio/speex \
		graphics/jpeg \
		graphics/png \
		devel/sdl2 \
		devel/jansson \
		devel/pcre \
		net/curl

USE_GMAKE =	Yes
MAKE_ENV =	V=1

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
