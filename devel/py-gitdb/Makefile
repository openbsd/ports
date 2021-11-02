# $OpenBSD: Makefile,v 1.16 2021/11/02 00:00:49 sthen Exp $

COMMENT=		Git object database

MODPY_EGG_VERSION=	2.0.5
DISTNAME=		gitdb2-${MODPY_EGG_VERSION}
PKGNAME=		py-gitdb-${MODPY_EGG_VERSION}
CATEGORIES=		devel
REVISION=		4

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODULES=		lang/python

MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	gitdb

FLAVORS =		python3
FLAVOR =	python3

RUN_DEPENDS=		devel/py-smmap${MODPY_FLAVOR}>=0.9.0

.include <bsd.port.mk>
