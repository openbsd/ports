# $OpenBSD: Makefile,v 1.2 2021/11/02 00:00:25 sthen Exp $

# included in python core 3.9
COMMENT=		AST unparser for Python

MODPY_EGG_VERSION=	1.6.3
DISTNAME=		astunparse-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

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
