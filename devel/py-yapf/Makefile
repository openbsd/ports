# $OpenBSD: Makefile,v 1.3 2019/02/09 05:53:53 rpointel Exp $

COMMENT =	formatter for Python code

MODPY_EGG_VERSION =	0.25.0
DISTNAME =	yapf-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

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
