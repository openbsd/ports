# $OpenBSD: Makefile,v 1.42 2020/11/14 12:35:05 bket Exp $

COMMENT=		elegant and simple HTTP library for Python

MODPY_EGG_VERSION=	2.25.0
DISTNAME=		requests-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		www

HOMEPAGE=		http://python-requests.org/

MAINTAINER=		Daniel Jakots <obsd@chown.me>

# APLv2
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYTEST =		Yes
MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		devel/py-certifi${MODPY_FLAVOR} \
			net/py-idna${MODPY_FLAVOR} \
			textproc/py-chardet${MODPY_FLAVOR} \
			www/py-urllib3${MODPY_FLAVOR}
TEST_DEPENDS=		devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-test-mock${MODPY_FLAVOR} \
			devel/py-test-httpbin${MODPY_FLAVOR} \
			devel/py-test-xdist${MODPY_FLAVOR} \
			net/py-socks${MODPY_FLAVOR} \
			www/py-urllib3${MODPY_FLAVOR}

FLAVORS=		python3
FLAVOR?=

WRKDIST=		${WRKDIR}/requests-${MODPY_EGG_VERSION}

post-install:
	ln -fs /etc/ssl/cert.pem \
	  ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/requests/cacert.pem

do-test:
	@cd ${WRKSRC} && PY_IGNORE_IMPORTMISMATCH=1 ${MODPY_BIN} ${MODPY_SETUP} test

.include <bsd.port.mk>
