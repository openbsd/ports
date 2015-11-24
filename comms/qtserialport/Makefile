# $OpenBSD: Makefile,v 1.1.1.1 2015/11/24 14:57:48 abieber Exp $

COMMENT =		provides functions to access serial ports

SHARED_LIBS +=		QtSerialPort 0.0 # 0.0

V =			5.4.2
DISTNAME =		qtserialport-v${V}
PKGNAME =		${DISTNAME:S/v//}

CATEGORIES =		comms

HOMEPAGE =		http://doc.qt.io/qt-5/qserialport.html
MAINTAINER =		Aaron Bieber <abieber@openbsd.org>

MASTER_SITES =		https://deftly.net/

# GPLv3, or LGPL.
# (GPLv2 not needed, since LGPL is more free)
# This lib is included in later versions of QT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		x11/qt4
FAKE_FLAGS =		INSTALL_ROOT=${WRKINST}
NO_TEST =		Yes

WANTLIB += m pthread stdc++

.for l v in $(SHARED_LIBS)
MAKE_FLAGS +=   LIB$l_VERSION=$v
.endfor

do-configure:
	cd ${WRKDIST} && env -i ${CONFIGURE_ENV} \
		${LOCALBASE}/bin/qmake4 PREFIX=${PREFIX}

.include <bsd.port.mk>
