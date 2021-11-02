# $OpenBSD: Makefile,v 1.10 2021/11/02 00:00:24 sthen Exp $

COMMENT=		complementary command-line interface for Git

MODPY_EGG_VERSION=	1.2.0
DISTNAME=		legit-${MODPY_EGG_VERSION}
CATEGORIES=		devel
REVISION=		0

HOMEPAGE=		https://frostming.github.io/legit/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		devel/py-clint${MODPY_FLAVOR}>=0.5.1 \
			devel/py-click${MODPY_FLAVOR} \
			devel/py-crayons${MODPY_FLAVOR} \
			devel/py-gitpython${MODPY_FLAVOR}>=1.0.2 \
			devel/py-six${MODPY_FLAVOR}

NO_TEST=		Yes

.include <bsd.port.mk>
