# $OpenBSD: Makefile,v 1.31 2020/03/04 08:54:46 ajacoutot Exp $

COMMENT=		unified interface for interacting with cloud services

MODPY_EGG_VERSION=	2.8.1
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
FLAVOR ?=

BUILD_DEPENDS=		devel/py-test-runner${MODPY_FLAVOR}

RUN_DEPENDS=		sysutils/py-lockfile${MODPY_FLAVOR}

TEST_DEPENDS=		devel/flake8 \
			devel/py-mock${MODPY_FLAVOR} \
			devel/py-test-runner${MODPY_FLAVOR} \
			security/py-openssl${MODPY_FLAVOR} \
			sysutils/py-lockfile${MODPY_FLAVOR} \
			www/py-requests-mock${MODPY_FLAVOR}

# python2
.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-backports-ssl-match-hostname
TEST_DEPENDS +=		devel/py-backports-ssl-match-hostname \
			devel/py-enum34
.endif

post-install:
	rm -rf ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/libcloud/test/

pre-test:
	cp ${WRKSRC}/libcloud/test/secrets.py-dist \
		${WRKSRC}/libcloud/test/secrets.py

.include <bsd.port.mk>
