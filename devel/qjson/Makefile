# $OpenBSD: Makefile,v 1.8 2017/03/17 15:00:11 jca Exp $

CATEGORIES =	devel

COMMENT=	Qt-based library that maps JSON data to QVariant objects

GH_ACCOUNT =	flavio
GH_PROJECT =	qjson
GH_TAGNAME =	0.9.0

HOMEPAGE =	http://qjson.sourceforge.net/

SHARED_LIBS =	qjson	1.0

MODULES =	devel/cmake \
		x11/qt4

WANTLIB += QtGui m stdc++

# LGPLv2
PERMIT_PACKAGE_CDROM =		Yes

# XXX enable tests if we switch to qt5
CONFIGURE_ARGS =	-DQJSON_BUILD_TESTS:Bool=No \
			-DQT4_BUILD:Bool=Yes

.include <bsd.port.mk>
