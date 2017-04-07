# $OpenBSD: Makefile,v 1.4 2017/04/07 22:01:11 sthen Exp $

COMMENT =	ForensicArtifacts.com Artifact Repository

MODPY_EGG_VERSION = 20161022
DISTNAME =	artifacts-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	security

HOMEPAGE =	https://github.com/ForensicArtifacts/artifacts

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# Apachev2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR ?=

RUN_DEPENDS =	textproc/py-yaml${MODPY_FLAVOR}
TEST_DEPENDS =	${RUN_DEPENDS}
MAKE_ENV +=	LC_CTYPE='en_US.UTF-8'

post-install:
	mv ${PREFIX}/bin/stats.py ${PREFIX}/bin/bin/stats.py${MODPY_BIN_SUFFIX}
	mv ${PREFIX}/bin/validator.py ${PREFIX}/bin/validator.py${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
