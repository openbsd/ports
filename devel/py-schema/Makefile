# $OpenBSD: Makefile,v 1.3 2022/02/25 12:18:20 sthen Exp $

COMMENT=		simple data validation library

MODPY_EGG_VERSION=	0.7.5
DISTNAME=		schema-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

HOMEPAGE=		https://github.com/keleshev/schema

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST=		Yes

FLAVORS=		python3
FLAVOR=			python3

TEST_DEPENDS=		devel/py-mock${MODPY_FLAVOR}

.include <bsd.port.mk>
