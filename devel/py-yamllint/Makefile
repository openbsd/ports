# $OpenBSD: Makefile,v 1.11 2019/07/12 20:45:56 sthen Exp $

COMMENT =	linter for YAML files

MODPY_EGG_VERSION = 1.16.0
DISTNAME =	yamllint-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	devel/py-pathspec${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR ?=

post-install:
	mv ${PREFIX}/bin/yamllint ${PREFIX}/bin/yamllint${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
