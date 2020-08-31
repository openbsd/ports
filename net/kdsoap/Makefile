# $OpenBSD: Makefile,v 1.1.1.1 2020/08/31 20:00:47 rsadowski Exp $

COMMENT =	Qt-based client-side and server-side SOAP component

DISTNAME =	kdsoap-1.9.0

SHARED_LIBS +=	kdsoap		0.0
SHARED_LIBS +=	kdsoap-server	0.0

CATEGORIES =	net devel

HOMEPAGE =	https://www.kdab.com/development-resources/qt-tools/kd-soap/

# AGPL3 modified
PERMIT_PACKAGE =	Yes
WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5Xml c m

MASTER_SITES =		https://github.com/KDAB/KDSoap/releases/download/${DISTNAME}/

MODULES =		devel/cmake \
			x11/qt5

BUILD_DEPENDS =		devel/boost

.include <bsd.port.mk>
