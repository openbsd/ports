# $OpenBSD: Makefile,v 1.17 2021/07/06 16:55:32 daniel Exp $

COMMENT =		CMake modules required by KDE5
DISTNAME =		extra-cmake-modules-${VERSION}
HOMEPAGE =		https://projects.kde.org/projects/kdesupport/extra-cmake-modules
REVISION =		0

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
		${PREFIX}/share/ECM/find-modules/

.include <bsd.port.mk>
