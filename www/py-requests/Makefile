# $OpenBSD: Makefile,v 1.13 2015/05/12 16:04:38 shadchin Exp $

COMMENT=	elegant and simple HTTP library for Python

MODPY_EGG_VERSION=2.7.0
DISTNAME=	requests-${MODPY_EGG_VERSION}
PKGNAME=	py-requests-${MODPY_EGG_VERSION}

CATEGORIES=	www

HOMEPAGE=	http://python-requests.org/

MAINTAINER=	Alexandr Shadchin <shadchin@openbsd.org>

# APLv2
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =	Yes

MODULES=	lang/python

TEST_DEPENDS=	devel/py-py${MODPY_FLAVOR} \
		devel/py-test${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR?=

MODPY_SETUPTOOLS= Yes

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest -v

.include <bsd.port.mk>
