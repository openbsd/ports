# $OpenBSD: Makefile,v 1.12 2020/08/01 05:34:08 landry Exp $
COMMENT =		arcade-puzzle game
V =			0.3.7
DISTNAME =		jag-${V}
CATEGORIES =		games
HOMEPAGE =		https://gitlab.com/coringao/jag

# GPLv3
# https://gitlab.com/coringao/jag/-/issues/1
PERMIT_PACKAGE =	restrictively licensed themes
PERMIT_DISTFILES =	restrictively licensed themes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5OpenGL Qt5Widgets
WANTLIB += Qt5X11Extras SDL2 SDL2_mixer X11 Xrandr c

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		https://gitlab.com/coringao/jag/-/archive/${V}/

MODULES =		devel/qmake x11/qt5
LIB_DEPENDS =		devel/sdl2 \
			devel/sdl2-mixer \
			x11/qt5/qtx11extras
# make jag and jag-editor
MODQMAKE_PROJECTS =	. \
			src/editor

# delete DOS line endings
post-extract:
	@find ${WRKSRC} -type f \( -name "*.cpp" -o -name "*.h" \) -exec \
		perl -i -pe 's/\r$$//' {} +

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/game.pro ${WRKSRC}/src/main.cpp \
		${WRKSRC}/src/editor/jag-editor.pro

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/jag
	cd ${WRKSRC}/data && pax -rw . ${PREFIX}/share/jag
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/
	find ${PREFIX}/share -type d -exec chmod ${DIRMODE} {} + -o \
		-type f -exec chmod ${SHAREMODE} {} +

.include <bsd.port.mk>
