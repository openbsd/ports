# $OpenBSD: Makefile,v 1.2 2016/12/25 14:54:48 zhuk Exp $

COMMENT =		CMake modules required by KDE5
DISTNAME =		extra-cmake-modules-${VERSION}
HOMEPAGE =		https://projects.kde.org/projects/kdesupport/extra-cmake-modules

WANTLIB- =

BUILD_DEPENDS =		textproc/py-sphinx

CONFIGURE_ARGS =	-DBUILD_QTHELP_DOCS=True \
			-DQCollectionGenerator_EXECUTABLE=${MODQT_LIBDIR}/bin/qcollectiongenerator

PKG_ARCH =		*

# use depleted
CONFIGURE_ARGS += -DMAN_INSTALL_DIR=${PREFIX}/man

# XXX Don't run compileall.py because it needs land/python
post-install:
	rm ${PREFIX}/share/ECM/kde-modules/*.orig

.include <bsd.port.mk>
