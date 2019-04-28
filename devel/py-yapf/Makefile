# $OpenBSD: Makefile,v 1.5 2019/04/28 20:51:39 sthen Exp $

COMMENT =	formatter for Python code

MODPY_EGG_VERSION =	0.26.0
DISTNAME =	yapf-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	devel

# Apache v2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =	Yes

FLAVORS =	python3
FLAVOR ?=

post-install:
	mv ${PREFIX}/bin/yapf ${PREFIX}/bin/yapf${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
