COMMENT=		unified interface for interacting with cloud services

MODPY_DISTV=	3.8.0
DISTNAME=		apache-libcloud-${MODPY_DISTV}
PKGNAME=		py-libcloud-${MODPY_DISTV}
REVISION=		2

CATEGORIES=		net

HOMEPAGE=		https://libcloud.apache.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE=		Yes

SITES=			${SITE_APACHE:=libcloud/}

MODULES=		lang/python

MODPY_PYBUILD=		setuptools

BUILD_DEPENDS=		devel/py-test-runner

RUN_DEPENDS=		sysutils/py-lockfile

TEST_DEPENDS=		devel/flake8 \
			devel/py-mock \
			devel/py-test-runner \
			security/py-openssl \
			sysutils/py-lockfile \
			www/py-requests-mock

# no need to package the test suite
post-install:
	rm -rf ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/libcloud/test/

pre-test:
	cp ${WRKSRC}/libcloud/test/secrets.py-dist \
		${WRKSRC}/libcloud/test/secrets.py

.include <bsd.port.mk>
