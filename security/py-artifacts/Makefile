COMMENT =	ForensicArtifacts.com Artifact Repository

MODPY_DISTV =	20250913
DISTNAME =	artifacts-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	security

HOMEPAGE =	https://github.com/ForensicArtifacts/artifacts

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Apachev2
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

RUN_DEPENDS =	textproc/py-yaml
TEST_DEPENDS =	devel/py-yapf
MAKE_ENV +=	LC_CTYPE='en_US.UTF-8'

post-install:
	mv ${PREFIX}/bin/stats ${PREFIX}/bin/artifacts-stats
	mv ${PREFIX}/bin/validator ${PREFIX}/bin/artifacts-validator

.include <bsd.port.mk>
