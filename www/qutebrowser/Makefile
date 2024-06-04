COMMENT=	keyboard-focused browser with a minimal GUI

MODPY_EGG_VERSION=	3.2.0
DISTNAME=	qutebrowser-${MODPY_EGG_VERSION}

HOMEPAGE=	https://www.qutebrowser.org/

CATEGORIES=	www

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

# prefers PyQt6 if possible; see patch-qutebrowser_qt_machinery_py if switching
RUN_DEPENDS=	devel/desktop-file-utils \
		textproc/py-yaml${MODPY_FLAVOR} \
		x11/gtk+4,-guic \
		x11/py-qt5${MODPY_FLAVOR} \
		www/py-jinja2${MODPY_FLAVOR} \
		www/py-qtwebengine${MODPY_FLAVOR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/misc/org.qutebrowser.qutebrowser.desktop \
		${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/qutebrowser/
	${INSTALL_DATA} ${WRKSRC}/qutebrowser/icons/*.{ico,xpm} \
		${PREFIX}/share/pixmaps/qutebrowser/
.for s in 16 24 32 48 64 96 128 256 512
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/${s}x${s}/apps/
	${INSTALL_DATA} ${WRKSRC}/qutebrowser/icons/qutebrowser-${s}x${s}.png \
		${PREFIX}/share/icons/hicolor/${s}x${s}/apps/qutebrowser.png
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/scalable/apps/
	${INSTALL_DATA} ${WRKSRC}/qutebrowser/icons/qutebrowser.svg \
		${PREFIX}/share/icons/hicolor/scalable/apps/

.include <bsd.port.arch.mk>
# adblock is rust+python; selectively add the dependency to avoid
# knocking out qutebrowser where it would otherwise work.
# adblock has BDEP on ring, which is not for powerpc64 riscv64 sparc64
# adblock is broken on i386.
.if ${PROPERTIES:Mrust} && ${MACHINE_ARCH} != sparc64 && ${MACHINE_ARCH} != i386 && ${MACHINE_ARCH} != powerpc64 && ${MACHINE_ARCH} != riscv64
RUN_DEPENDS +=		www/py-adblock${MODPY_FLAVOR}
.endif

.include <bsd.port.mk>
