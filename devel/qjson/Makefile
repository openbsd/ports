# $OpenBSD: Makefile,v 1.15 2020/08/27 05:19:17 rsadowski Exp $

COMMENT=	Qt-based library that maps JSON data to QVariant objects

GH_ACCOUNT =	flavio
GH_PROJECT =	qjson
GH_TAGNAME =	0.9.0
REVISION =	3

CATEGORIES =	devel

HOMEPAGE =	http://qjson.sourceforge.net/

SHARED_LIBS = qjson-qt5  0.0

MODULES =	devel/cmake \
		x11/qt5

# LGPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core m

CONFIGURE_ARGS =	-DQJSON_BUILD_TESTS=ON

.include <bsd.port.mk>
