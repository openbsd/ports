.include "../Makefile.inc"

VERSION =		${PYSIDE_VERSION}
DISTNAME =		pyside-setup-everywhere-src-${VERSION}

HOMEPAGE =		https://wiki.qt.io/Qt_for_Python
MAINTAINER =		Johannes Thyssen Tishman <ports@thyssentishman.com>

# BSD 3-clause GPLv2 LGPL2 LGPL3
PERMIT_PACKAGE =	Yes

QTSRC =			https://download.qt.io/official_releases/QtForPython
SITES =			${QTSRC}/pyside6/PySide6-${VERSION}-src/
