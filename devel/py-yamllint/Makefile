# $OpenBSD: Makefile,v 1.16 2021/02/19 23:13:03 sthen Exp $

COMMENT =	linter for YAML files

MODPY_EGG_VERSION = 1.23.0
DISTNAME =	yamllint-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	devel

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =	Yes

RUN_DEPENDS =	devel/py-pathspec${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR ?=

post-install:
	mv ${PREFIX}/bin/yamllint ${PREFIX}/bin/yamllint${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
