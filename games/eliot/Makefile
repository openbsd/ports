# $OpenBSD: Makefile,v 1.17 2021/10/30 07:56:55 landry Exp $

V =		2.2
COMMENT =	scrabble game
DISTNAME =	eliot-${V}
CATEGORIES =	games

HOMEPAGE =	https://nongnu.org/eliot/

MASTER_SITES =	http://dl.sv.nongnu.org/releases/eliot/releases/${V}/

EXTRACT_ONLY =	${DISTNAME}${EXTRACT_SUFX}
DISTFILES +=	${DISTNAME}${EXTRACT_SUFX}
DIST_SUBDIR =	eliot
DICTS =		danosc eliot-dic-cs eliot-dic-fr lex-fise rak sowpods06 twl06
.for dict in ${DICTS}
DISTFILES+=	${dict}.dawg:0
.endfor
MASTER_SITES0 =	${MASTER_SITE_SAVANNAH:=eliot/dict/}

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =	x11/qt5

COMPILER =		base-clang ports-gcc base-gcc

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -pthread -L${LOCALBASE}/lib -liconv"
USE_GMAKE =	Yes

BUILD_DEPENDS =	devel/boost
RUN_DEPENDS =	devel/desktop-file-utils
LIB_DEPENDS =	textproc/arabica devel/libconfig
WANTLIB +=	Qt5Core Qt5Gui Qt5Network Qt5PrintSupport Qt5Widgets
WANTLIB +=	c m pthread ${COMPILER_LIBCXX}
WANTLIB +=	arabica config++ expat iconv intl curses

post-configure:
	${SUBST_CMD} ${WRKSRC}/qt/main_window.cpp

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/eliot
.for dict in ${DICTS}
	${INSTALL_DATA} ${FULLDISTDIR}/${dict}.dawg ${PREFIX}/share/eliot
.endfor

.include <bsd.port.mk>
