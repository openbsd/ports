COMMENT=	keyboard-focused browser with a minimal GUI

MODPY_EGG_VERSION=	3.3.1
REVISION=	0
DISTNAME=	qutebrowser-${MODPY_EGG_VERSION}

HOMEPAGE=	https://www.qutebrowser.org/

CATEGORIES=	www

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/desktop-file-utils \
		textproc/py-yaml${MODPY_FLAVOR} \
		x11/gtk+4,-guic \
		www/py-jinja2${MODPY_FLAVOR}

.if ${MACHINE_ARCH} == amd64 || ${MACHINE_ARCH} == aarch64
RUN_DEPENDS+=	x11/py-qt6${MODPY_FLAVOR} \
		www/py-qt6webengine${MODPY_FLAVOR}
WRAPPER=	PyQt6
.else
RUN_DEPENDS+=	x11/py-qt5${MODPY_FLAVOR} \
		www/py-qtwebengine${MODPY_FLAVOR}
WRAPPER=	PyQt5
.endif

# make sure this is set, otherwise preferred order is PyQt6 then PyQt5,
# which fails if PyQt6 is found but PyQt6WebEngine is not.
post-extract:
	sed -i 's/_WRAPPER_OVERRIDE = .*/_WRAPPER_OVERRIDE = "${WRAPPER}"/' \
		${WRKSRC}/qutebrowser/qt/machinery.py

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
.if ${PROPERTIES:Mrust}
RUN_DEPENDS +=		www/py-adblock${MODPY_FLAVOR}
.endif

.include <bsd.port.mk>
