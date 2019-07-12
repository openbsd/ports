# $OpenBSD: Makefile,v 1.14 2019/07/12 20:45:57 sthen Exp $

CATEGORIES =	devel

COMMENT=	Qt-based library that maps JSON data to QVariant objects

GH_ACCOUNT =	flavio
GH_PROJECT =	qjson
GH_TAGNAME =	0.9.0
REVISION =	2

HOMEPAGE =	http://qjson.sourceforge.net/

SHARED_LIBS =	qjson	1.0

MODULES =	devel/cmake \
		x11/qt4

WANTLIB += QtGui m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

# LGPLv2
PERMIT_PACKAGE =		Yes

# XXX enable tests if we switch to qt5
CONFIGURE_ARGS =	-DQJSON_BUILD_TESTS:Bool=No \
			-DQT4_BUILD:Bool=Yes

.include <bsd.port.mk>
