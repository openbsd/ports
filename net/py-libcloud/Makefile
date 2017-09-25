# $OpenBSD: Makefile,v 1.19 2017/09/25 17:12:46 ajacoutot Exp $

COMMENT=		unified interface for interacting with cloud services

MODPY_EGG_VERSION=	2.2.1
DISTNAME=		apache-libcloud-${MODPY_EGG_VERSION}
PKGNAME=		py-libcloud-${MODPY_EGG_VERSION}

CATEGORIES=		net

HOMEPAGE=		https://libcloud.apache.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_APACHE:=libcloud/}

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

BUILD_DEPENDS=		devel/py-test-runner

RUN_DEPENDS=		sysutils/py-lockfile

# XXX needs https://pypi.python.org/pypi/requests-mock
TEST_DEPENDS=		devel/flake8 \
			devel/pep8 \
			devel/py-mock \
			devel/py-test-runner \
			sysutils/py-lockfile

# python2
RUN_DEPENDS +=		devel/py-backports-ssl-match-hostname
TEST_DEPENDS +=		devel/py-backports-ssl-match-hostname
# XXX needs https://pypi.python.org/simple/requests_mock/
TEST_IS_INTERACTIVE=	Yes

post-install:
	rm -rf ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/libcloud/test/

pre-test:
	cp ${WRKSRC}/libcloud/test/secrets.py-dist \
		${WRKSRC}/libcloud/test/secrets.py

.include <bsd.port.mk>
