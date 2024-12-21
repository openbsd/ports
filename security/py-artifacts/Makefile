COMMENT =	ForensicArtifacts.com Artifact Repository

MODPY_DISTV =	20200118
DISTNAME =	artifacts-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	5

CATEGORIES =	security

HOMEPAGE =	https://github.com/ForensicArtifacts/artifacts

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# Apachev2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =	setuptools

RUN_DEPENDS =	textproc/py-yaml
TEST_DEPENDS =	devel/py-yapf
MAKE_ENV +=	LC_CTYPE='en_US.UTF-8'

.include <bsd.port.mk>
