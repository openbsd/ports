COMMENT =	CMake modules required by KDE and Qt
DISTNAME =	extra-cmake-modules-${VERSION}

PKG_ARCH =	*

MODULES =	lang/python
MODPY_RUNDEP =	No

BUILD_DEPENDS =		textproc/py-sphinx${MODPY_FLAVOR} \
			x11/qt5/qttools,-main

CONFIGURE_ARGS +=	-DBUILD_QTHELP_DOCS=ON \
			-DQCollectionGenerator_EXECUTABLE=${LOCALBASE}/lib/qt5/bin/qcollectiongenerator

# use depleted
CONFIGURE_ARGS +=	-DMAN_INSTALL_DIR=${PREFIX}/man

post-install:
	${MODPY_COMPILEALL} ${PREFIX}/share/ECM

pre-configure:
	${SUBST_CMD} ${WRKSRC}/find-modules/FindInotify.cmake

.include <bsd.port.mk>
