COMMENT =		action puzzle game inspired by Robbo

V =			0.68
DISTNAME =		gnurobbo-$V-source
PKGNAME =		gnurobbo-$V
REVISION =		0

CATEGORIES =		games

HOMEPAGE =		http://gnurobbo.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += SDL SDL_image SDL_mixer SDL_ttf c m pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=gnurobbo/}

LIB_DEPENDS =		devel/sdl-image \
			devel/sdl-mixer \
			devel/sdl-ttf

MAKE_FLAGS =		PACKAGE_DATA_DIR=${PREFIX}/share/gnurobbo \
			BINDIR=${PREFIX}/bin \
			DOCDIR=${PREFIX}/share/doc/gnurobbo
FAKE_FLAGS =		PACKAGE_DATA_DIR=${WRKINST}/${PREFIX}/share/gnurobbo \
			BINDIR=${WRKINST}/${PREFIX}/bin \
			DOCDIR=${WRKINST}/${PREFIX}/share/doc/gnurobbo

USE_GMAKE =		Yes

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/gnurobbo-$V
WRKSRC =		${WRKDIST}/gnurobbo

.include <bsd.port.mk>
