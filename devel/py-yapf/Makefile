# $OpenBSD: Makefile,v 1.10 2021/05/21 19:50:31 kmos Exp $

COMMENT =	formatter for Python code

MODPY_EGG_VERSION =	0.28.0
DISTNAME =	yapf-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	2

CATEGORIES =	devel

# Apache v2
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =	Yes

FLAVORS =	python3
FLAVOR ?=

post-install:
	mv ${PREFIX}/bin/yapf ${PREFIX}/bin/yapf${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
