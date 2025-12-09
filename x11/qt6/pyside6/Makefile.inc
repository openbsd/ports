.include "../Makefile.inc"

VERSION =		${PYSIDE_VERSION}
DISTNAME =		pyside-setup-everywhere-src-${VERSION}

HOMEPAGE =		https://wiki.qt.io/Qt_for_Python
MAINTAINER =		Johannes Thyssen Tishman <jtt@openbsd.org>

# BSD 3-clause GPLv2 LGPL2 LGPL3
PERMIT_PACKAGE =	Yes

QTSRC =			https://download.qt.io/official_releases/QtForPython
SITES =			${QTSRC}/pyside6/PySide6-${VERSION}-src/

SITES.rpm =		https://src.fedoraproject.org/rpms/python-pyside6/raw/rawhide/f/

PATCHFILES.rpm =	0001-Fix-installation.patch \
			0001-Revert-Modify-headers-installation-for-CMake-builds.patch
PATCH_DIST_STRIP =	-p1

CONFIGURE_ARGS +=	-Dis_pyside6_superproject_build=1
