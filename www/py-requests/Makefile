# $OpenBSD: Makefile,v 1.44 2021/03/01 16:19:15 sthen Exp $

COMMENT=		elegant and simple HTTP library for Python

MODPY_EGG_VERSION=	2.25.1
DISTNAME=		requests-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		www

HOMEPAGE=		http://python-requests.org/

MAINTAINER=		Daniel Jakots <obsd@chown.me>

# APLv2
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

FLAVORS=		python3
FLAVOR?=

MODPY_PI=		Yes
MODPY_PYTEST=		Yes
MODPY_SETUPTOOLS=	Yes
TEST_ENV=		PY_IGNORE_IMPORTMISMATCH=1

RUN_DEPENDS=		devel/py-certifi${MODPY_FLAVOR} \
			net/py-idna${MODPY_FLAVOR} \
			textproc/py-chardet${MODPY_FLAVOR} \
			www/py-urllib3${MODPY_FLAVOR}

.if ${FLAVOR:Mpython3}
TEST_DEPENDS=		devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-test-mock${MODPY_FLAVOR} \
			devel/py-test-httpbin${MODPY_FLAVOR} \
			devel/py-test-xdist${MODPY_FLAVOR} \
			net/py-socks${MODPY_FLAVOR} \
			www/py-urllib3${MODPY_FLAVOR}
.else
NO_TEST =		Yes
.endif

.include <bsd.port.mk>
