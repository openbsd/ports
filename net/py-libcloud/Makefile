# $OpenBSD: Makefile,v 1.2 2014/07/15 15:34:15 ajacoutot Exp $

COMMENT=		unified interface for interacting with cloud services

MODPY_EGG_VERSION=	0.15.1
DISTNAME=		apache-libcloud-${MODPY_EGG_VERSION}
PKGNAME=		py-libcloud-${MODPY_EGG_VERSION}

CATEGORIES=		net

HOMEPAGE=		https://libcloud.apache.org/

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_APACHE:=libcloud/}

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		sysutils/py-lockfile
TEST_DEPENDS=		sysutils/py-lockfile

post-install:
	rm -rf ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/libcloud/test/

pre-test:
	cp ${WRKSRC}/libcloud/test/secrets.py-dist \
		${WRKSRC}/libcloud/test/secrets.py

.include <bsd.port.mk>
