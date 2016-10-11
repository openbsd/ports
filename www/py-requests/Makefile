# $OpenBSD: Makefile,v 1.19 2016/10/11 09:09:50 sthen Exp $

COMMENT=		elegant and simple HTTP library for Python

MODPY_EGG_VERSION=	2.11.1
PKGNAME=		py-requests-${MODPY_EGG_VERSION}
REVISION=		0

GH_ACCOUNT=		kennethreitz
GH_PROJECT=		requests
GH_TAGNAME=		v${MODPY_EGG_VERSION}

CATEGORIES=		www

HOMEPAGE=		http://python-requests.org/

MAINTAINER=		Alexandr Shadchin <shadchin@openbsd.org>

# APLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

TEST_DEPENDS=		devel/py-test${MODPY_FLAVOR} \
			devel/py-test-mock${MODPY_FLAVOR} \
			devel/py-test-httpbin${MODPY_FLAVOR} \
			net/py-socks${MODPY_FLAVOR}

FLAVORS=		python3
FLAVOR?=

MODPY_SETUPTOOLS=	Yes

WRKDIST=		${WRKDIR}/requests-${MODPY_EGG_VERSION}

post-install:
	ln -fs /etc/ssl/cert.pem \
	  ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/requests/cacert.pem

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest

.include <bsd.port.mk>
