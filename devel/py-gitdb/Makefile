# $OpenBSD: Makefile,v 1.18 2022/03/04 08:38:40 sthen Exp $

COMMENT=		Git object database

MODPY_EGG_VERSION=	4.0.9
DISTNAME=		gitdb-${MODPY_EGG_VERSION}
PKGNAME=		py-gitdb-${MODPY_EGG_VERSION}
CATEGORIES=		devel

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODULES=		lang/python

MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

# some tests only work in a git checkout of gitdb (require .git files)
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	gitdb

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS=		devel/py-smmap${MODPY_FLAVOR}<6.0

.include <bsd.port.mk>
