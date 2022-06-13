COMMENT =		CMake modules required by KDE5
DISTNAME =		extra-cmake-modules-${VERSION}
HOMEPAGE =		https://projects.kde.org/projects/kdesupport/extra-cmake-modules

MODULES =		lang/python
MODPY_RUNDEP =		No

BUILD_DEPENDS =		textproc/py-sphinx${MODPY_FLAVOR}>=4.0.2

CONFIGURE_ARGS +=	-DBUILD_QTHELP_DOCS=ON \
			-DQCollectionGenerator_EXECUTABLE=${MODQT_LIBDIR}/bin/qcollectiongenerator

PKG_ARCH =		*

# use depleted
CONFIGURE_ARGS +=	-DMAN_INSTALL_DIR=${PREFIX}/man

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/ECM/find-modules/ \
		${PREFIX}/share/ECM/modules/ \
		${PREFIX}/share/ECM/toolchain/

.include <bsd.port.mk>
