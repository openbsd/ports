COMMENT =	C++ coroutines for Qt

GH_ACCOUNT =	danvratil
GH_PROJECT =	qcoro
GH_TAGNAME =	v0.5.1

CATEGORIES =	devel

HOMEPAGE =	https://qcoro.dvratil.cz/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		devel/cmake \
			x11/qt5

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Qt6=ON \
			-DUSE_QT_VERSION=5

.include <bsd.port.mk>
