# $OpenBSD: Makefile,v 1.8 2018/04/25 19:54:59 jasper Exp $

COMMENT=		Git object database

MODPY_EGG_VERSION=	2.0.3
DISTNAME=		gitdb2-${MODPY_EGG_VERSION}
PKGNAME=		py-gitdb-${MODPY_EGG_VERSION}
CATEGORIES=		devel

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODULES=		lang/python

MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS=		devel/py-async${MODPY_FLAVOR} \
			devel/py-smmap${MODPY_FLAVOR}>=0.9.0

# tests should be run using nosetests against the appropriate tag of
# upstream's git repo
NO_TEST=		Yes

.include <bsd.port.mk>
