# $OpenBSD: Makefile,v 1.1.1.1 2021/03/24 19:48:16 sebastia Exp $

# included in python core 3.9
COMMENT=		AST unparser for Python

MODPY_EGG_VERSION=	1.6.3
DISTNAME=		astunparse-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

HOMEPAGE=		https://github.com/simonpercivall/astunparse

MAINTAINER=		Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

FLAVORS=		python3
FLAVOR=			python3

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

MODPY_PYTEST=		Yes
TEST_ENV=		PYTHONPATH="${WRKSRC}/lib"

.include <bsd.port.mk>
