# $OpenBSD: Makefile,v 1.8 2017/07/26 22:45:16 sthen Exp $

COMMENT =		provides functions to access serial ports

SHARED_LIBS +=		QtSerialPort 0.0 # 0.0

V =			5.4.2
DISTNAME =		qtserialport-v${V}
PKGNAME =		${DISTNAME:S/v//}
PKGSPEC =		qtserialport-<5.6
REVISION =		1

CATEGORIES =		comms

HOMEPAGE =		http://doc.qt.io/qt-5/qserialport.html
MAINTAINER =		Aaron Bieber <abieber@openbsd.org>

MASTER_SITES =		https://deftly.net/

# GPLv3, or LGPL.
# (GPLv2 not needed, since LGPL is more free)
# This lib is included in later versions of QT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/qmake x11/qt4
FAKE_FLAGS =		INSTALL_ROOT=${WRKINST}
NO_TEST =		Yes

WANTLIB += m pthread ${COMPILER_LIBCXX}

.for l v in $(SHARED_LIBS)
MAKE_FLAGS +=   LIB$l_VERSION=$v
.endfor

.include <bsd.port.mk>
