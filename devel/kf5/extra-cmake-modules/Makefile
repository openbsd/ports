COMMENT =	CMake modules required by KDE5
DISTNAME =	extra-cmake-modules-${VERSION}
REVISION =	0
HOMEPAGE =	https://projects.kde.org/projects/kdesupport/extra-cmake-modules

PKG_ARCH =	*

MODULES =	lang/python
MODPY_RUNDEP =	No

BUILD_DEPENDS =	textproc/py-sphinx${MODPY_FLAVOR}>=4.0.2

CONFIGURE_ARGS +=	-DBUILD_QTHELP_DOCS=ON \
			-DQCollectionGenerator_EXECUTABLE=${MODQT_LIBDIR}/bin/qcollectiongenerator

# use depleted
CONFIGURE_ARGS +=	-DMAN_INSTALL_DIR=${PREFIX}/man

post-install:
	${MODPY_COMPILEALL} \
		${PREFIX}/share/ECM/find-modules/ \
		${PREFIX}/share/ECM/modules/ \
		${PREFIX}/share/ECM/toolchain/

pre-configure:
	${SUBST_CMD} ${WRKSRC}/find-modules/FindInotify.cmake

.include <bsd.port.mk>
