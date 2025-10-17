COMMENT =	CMake modules required by KDE and Qt
DISTNAME =	extra-cmake-modules-${VERSION}

PKG_ARCH =	*

MODULES =	lang/python
MODPY_RUNDEP =	No

BUILD_DEPENDS =		textproc/py-sphinx \
			x11/qt6/qttools

CONFIGURE_ARGS +=	-DBUILD_QTHELP_DOCS=ON

# use depleted
CONFIGURE_ARGS +=	-DMAN_INSTALL_DIR=${PREFIX}/man

post-install:
	${MODPY_COMPILEALL} ${PREFIX}/share/ECM

pre-configure:
	${SUBST_CMD} ${WRKSRC}/find-modules/FindInotify.cmake

.include <bsd.port.mk>
