# $OpenBSD: Makefile,v 1.2 2018/06/19 12:11:32 rpointel Exp $

COMMENT =	formatter for Python code

MODPY_EGG_VERSION =	0.22.0
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
