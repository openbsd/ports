# $OpenBSD: Makefile,v 1.11 2019/07/12 20:45:48 sthen Exp $

COMMENT=		Git object database

MODPY_EGG_VERSION=	2.0.5
DISTNAME=		gitdb2-${MODPY_EGG_VERSION}
PKGNAME=		py-gitdb-${MODPY_EGG_VERSION}
CATEGORIES=		devel
REVISION=		0

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODULES=		lang/python

MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS=		devel/py-smmap${MODPY_FLAVOR}>=0.9.0

# tests should be run using nosetests against the appropriate tag of
# upstream's git repo
NO_TEST=		Yes

.include <bsd.port.mk>
