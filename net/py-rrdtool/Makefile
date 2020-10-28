# $OpenBSD: Makefile,v 1.2 2020/10/28 12:12:46 sthen Exp $

COMMENT =	Python bindings for rrdtool

MODPY_EGG_VERSION =	0.1.15
REVISION =	0

DISTNAME =	rrdtool-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	databases net

HOMEPAGE =	https://github.com/commx/python-rrdtool

# LGPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += pthread rrd

MODULES =	lang/python
LIB_DEPENDS =	net/rrdtool

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
NO_TEST =		Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
