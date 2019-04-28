# $OpenBSD: Makefile,v 1.11 2019/04/28 20:51:51 sthen Exp $

COMMENT =	ForensicArtifacts.com Artifact Repository

MODPY_EGG_VERSION = 20180505
DISTNAME =	artifacts-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

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
TEST_DEPENDS =	${RUN_DEPENDS} \
		devel/py-yapf${MODPY_FLAVOR}
MAKE_ENV +=	LC_CTYPE='en_US.UTF-8'

.include <bsd.port.mk>
