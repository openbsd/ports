# $OpenBSD: Makefile,v 1.7 2017/12/10 12:05:37 jasper Exp $

COMMENT=		Git object database

MODPY_EGG_VERSION=	0.6.4
DISTNAME=		gitdb-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0
CATEGORIES=		devel

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODPY_PI =		Yes

MODULES=		lang/python

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS=		devel/py-async${MODPY_FLAVOR} \
			devel/py-smmap${MODPY_FLAVOR}>=0.9.0

# tests should be run using nosetests against the appropriate tag of
# upstream's git repo
NO_TEST=		Yes

.include <bsd.port.mk>
