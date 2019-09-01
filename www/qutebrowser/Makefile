# $OpenBSD: Makefile,v 1.15 2019/09/01 10:58:44 jasper Exp $

BROKEN =		update requires QT5 webengine (not ported)
COMMENT =		keyboard-focused browser with a minimal GUI

MODPY_EGG_VERSION =	0.11.1
DISTNAME =		qutebrowser-${MODPY_EGG_VERSION}
REVISION =		2

HOMEPAGE =		https://www.qutebrowser.org/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

CATEGORIES =		www

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/desktop-file-utils \
			textproc/py-cssutils${MODPY_FLAVOR} \
			textproc/py-PEG2${MODPY_FLAVOR} \
			textproc/py-pygments${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			x11/gtk+3,-guic \
			x11/py-qt5${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/qutebrowser.desktop ${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/qutebrowser/
	${INSTALL_DATA} ${WRKSRC}/icons/*.{ico,xpm} ${PREFIX}/share/pixmaps/qutebrowser/
.for s in 16 24 32 48 64 96 128 256 512
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/${s}x${s}/apps/
	${INSTALL_DATA} ${WRKSRC}/icons/qutebrowser-${s}x${s}.png \
		${PREFIX}/share/icons/hicolor/${s}x${s}/apps/qutebrowser.png
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/scalable/apps/
	${INSTALL_DATA} ${WRKSRC}/icons/qutebrowser.svg \
		${PREFIX}/share/icons/hicolor/scalable/apps/

.include <bsd.port.mk>
