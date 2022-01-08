# $OpenBSD: Makefile,v 1.39 2022/01/08 01:36:34 sthen Exp $

COMMENT =		keyboard-focused browser with a minimal GUI

MODPY_EGG_VERSION =	2.3.1
DISTNAME =		qutebrowser-${MODPY_EGG_VERSION}
REVISION =		1

HOMEPAGE =		https://www.qutebrowser.org/

CATEGORIES =		www

MAINTAINER =		Dimitri Karamazov <deserter666@danwin1210.me>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/py-importlib_resources${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			x11/gtk+3,-guic \
			x11/py-qt5${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR} \
			www/py-qtwebengine${MODPY_FLAVOR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/misc/org.qutebrowser.qutebrowser.desktop ${PREFIX}/share/applications/
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

.include <bsd.port.arch.mk>
# adblock is rust+python; selectively add the dependency to avoid
# knocking out qutebrowser where it would otherwise work.
.if ${PROPERTIES:Mrust} && ${MACHINE_ARCH} != sparc64
RUN_DEPENDS +=		www/py-adblock${MODPY_FLAVOR}
.endif

.include <bsd.port.mk>
