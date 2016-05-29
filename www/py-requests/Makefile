# $OpenBSD: Makefile,v 1.17 2016/05/29 15:21:56 shadchin Exp $

COMMENT=	elegant and simple HTTP library for Python

MODPY_EGG_VERSION=2.10.0
DISTNAME=	v${MODPY_EGG_VERSION}
PKGNAME=	py-requests-${MODPY_EGG_VERSION}

GH_ACCOUNT=	kennethreitz
GH_PROJECT=	requests

CATEGORIES=	www

HOMEPAGE=	http://python-requests.org/

MAINTAINER=	Alexandr Shadchin <shadchin@openbsd.org>

# APLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python

TEST_DEPENDS=	devel/py-test${MODPY_FLAVOR} \
		devel/py-test-mock${MODPY_FLAVOR} \
		devel/py-test-httpbin${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR?=

MODPY_SETUPTOOLS= Yes

WRKDIST=	${WRKDIR}/requests-${MODPY_EGG_VERSION}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest

.include <bsd.port.mk>
