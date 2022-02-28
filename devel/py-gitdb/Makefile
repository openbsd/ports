# $OpenBSD: Makefile,v 1.17 2022/02/28 12:14:23 sthen Exp $

COMMENT=		Git object database

MODPY_EGG_VERSION=	4.0.2
DISTNAME=		gitdb-${MODPY_EGG_VERSION}
PKGNAME=		py-gitdb-${MODPY_EGG_VERSION}
CATEGORIES=		devel

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODULES=		lang/python

MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	gitdb

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS=		devel/py-smmap${MODPY_FLAVOR}>=0.9.0

.include <bsd.port.mk>
