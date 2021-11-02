# $OpenBSD: Makefile,v 1.2 2021/11/02 00:01:01 sthen Exp $

COMMENT=		simple data validation library

MODPY_EGG_VERSION=	0.7.4
DISTNAME=		schema-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		devel

HOMEPAGE=		https://github.com/keleshev/schema

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR=			python3

RUN_DEPENDS=		devel/py-contextlib2${MODPY_FLAVOR}

TEST_DEPENDS=		devel/py-mock${MODPY_FLAVOR}

.include <bsd.port.mk>
