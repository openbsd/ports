# $OpenBSD: Makefile,v 1.20 2021/11/18 21:54:55 sthen Exp $

COMMENT =	linter for YAML files

MODPY_EGG_VERSION = 1.26.3
DISTNAME =	yamllint-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

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
FLAVOR =	python3

.include <bsd.port.mk>
