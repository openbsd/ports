COMMENT =	game of life simulator

PKGNAME =	golly-4.3
DISTNAME =	${PKGNAME}-src

CATEGORIES =	games math

HOMEPAGE =	https://golly.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL c m wx_baseu-3.2 wx_baseu_net-3.2
WANTLIB += wx_gtk3u_core-3.2 wx_gtk3u_gl-3.2 wx_gtk3u_html-3.2
WANTLIB += z
# Note: Python is loaded with wxDynamicLibrary.Load(), and
# python needs libutil to prevent undefined openpty and forkpty symbols.
WANTLIB += util ${MODPY_WANTLIB}

SITES =		${SITE_SOURCEFORGE:=golly/}

COMPILER =	base-clang ports-gcc base-gcc

MODULES =	lang/python

MODPY_BUILDDEP =	No
CONFIGURE_STYLE =	bleh # hack around python.port.mk default

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	x11/wxWidgets>=3.0.4

USE_GMAKE =	Yes

MAKE_FILE =	makefile-gtk

NO_TEST =	Yes

WRKSRC =	${WRKDIST}/gui-wx

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/icons/appicon.xpm \
		${PREFIX}/share/pixmaps/golly.xpm
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${FILESDIR}/golly.desktop \
		${PREFIX}/share/applications

.include <bsd.port.mk>
