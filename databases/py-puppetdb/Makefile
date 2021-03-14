# $OpenBSD: Makefile,v 1.24 2021/03/14 13:10:13 sebastia Exp $

COMMENT=		library for working with the PuppetDB API

MODPY_EGG_VERSION=	2.3.0
DISTNAME=		pypuppetdb-${MODPY_EGG_VERSION}
PKGNAME=		py-puppetdb-${MODPY_EGG_VERSION}
CATEGORIES=		databases www

MAINTAINER=		Sebastian Reitenbach <sebastia@openbsd.org>

# Apache2
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR?=		python3

RUN_DEPENDS=		www/py-requests${MODPY_FLAVOR}>=2.22.0
BUILD_DEPENDS=		${RUN_DEPENDS}

# ERROR: toxini file 'tox.ini' not found
NO_TEST =		Yes

# The file doesn't exist, but setup tries to open it and fails
pre-build:
	touch ${WRKDIST}/CHANGELOG.md

.include <bsd.port.mk>
