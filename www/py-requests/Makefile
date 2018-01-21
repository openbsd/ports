# $OpenBSD: Makefile,v 1.26 2018/01/21 23:20:10 jung Exp $

COMMENT=		elegant and simple HTTP library for Python

MODPY_EGG_VERSION=	2.18.4
PKGNAME=		py-requests-${MODPY_EGG_VERSION}

GH_ACCOUNT=		kennethreitz
GH_PROJECT=		requests
GH_TAGNAME=		v${MODPY_EGG_VERSION}

CATEGORIES=		www

HOMEPAGE=		http://python-requests.org/

MAINTAINER=		Alexandr Shadchin <shadchin@openbsd.org>

# APLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

RUN_DEPENDS=		devel/py-certifi${MODPY_FLAVOR} \
			net/py-idna${MODPY_FLAVOR} \
			textproc/py-chardet${MODPY_FLAVOR} \
			www/py-urllib3${MODPY_FLAVOR}
TEST_DEPENDS=		${RUN_DEPENDS} \
			devel/py-test${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-test-mock${MODPY_FLAVOR} \
			devel/py-test-httpbin${MODPY_FLAVOR} \
			devel/py-test-xdist${MODPY_FLAVOR} \
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
