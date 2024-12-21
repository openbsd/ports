COMMENT=		library for working with the PuppetDB API

MODPY_DISTV=	3.2.0
DISTNAME=		pypuppetdb-${MODPY_DISTV}
PKGNAME=		py-puppetdb-${MODPY_DISTV}
CATEGORIES=		databases www
REVISION=		1

MAINTAINER=		Sebastian Reitenbach <sebastia@openbsd.org>

# Apache2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	www/py-requests>=2.22.0
BUILD_DEPENDS=	${RUN_DEPENDS}

# ERROR: toxini file 'tox.ini' not found
NO_TEST=	Yes

# The file doesn't exist, but setup tries to open it and fails
pre-build:
	touch ${WRKDIST}/CHANGELOG.md

.include <bsd.port.mk>
