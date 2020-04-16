# $OpenBSD: Makefile,v 1.32 2020/04/16 06:25:33 ajacoutot Exp $

COMMENT=		unified interface for interacting with cloud services

MODPY_EGG_VERSION=	3.0.0
DISTNAME=		apache-libcloud-${MODPY_EGG_VERSION}
PKGNAME=		py-libcloud-${MODPY_EGG_VERSION}

CATEGORIES=		net

HOMEPAGE=		https://libcloud.apache.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE=		Yes

MASTER_SITES=		${MASTER_SITE_APACHE:=libcloud/}

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST =		Yes

FLAVORS=		python3
FLAVOR ?=		python3

BUILD_DEPENDS=		devel/py-test-runner${MODPY_FLAVOR}

RUN_DEPENDS=		sysutils/py-lockfile${MODPY_FLAVOR}

TEST_DEPENDS=		devel/flake8 \
			devel/py-mock${MODPY_FLAVOR} \
			devel/py-test-runner${MODPY_FLAVOR} \
			security/py-openssl${MODPY_FLAVOR} \
			sysutils/py-lockfile${MODPY_FLAVOR} \
			www/py-requests-mock${MODPY_FLAVOR}

# no need to package the test suite
post-install:
	rm -rf ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/libcloud/test/

pre-test:
	cp ${WRKSRC}/libcloud/test/secrets.py-dist \
		${WRKSRC}/libcloud/test/secrets.py

.include <bsd.port.mk>
