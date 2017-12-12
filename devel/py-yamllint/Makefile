# $OpenBSD: Makefile,v 1.1.1.1 2017/12/12 20:49:50 rpointel Exp $

COMMENT =	linter for YAML files

MODPY_EGG_VERSION = 1.10.0
DISTNAME =	yamllint-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	devel/py-pathspec${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR}
TEST_DEPENDS =	${RUN_DEPENDS}

FLAVORS =	python3
FLAVOR ?=

post-install:
	mv ${PREFIX}/bin/yamllint ${PREFIX}/bin/yamllint${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
