# $OpenBSD: Makefile,v 1.6 2016/04/25 09:14:53 danj Exp $

COMMENT=		Git object database

MODPY_EGG_VERSION=	0.6.4
DISTNAME=		gitdb-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODPY_PI =		Yes

MODULES=		lang/python

RUN_DEPENDS=		devel/py-async \
			devel/py-smmap>=0.9.0

# tests should be run using nosetests against the appropriate tag of
# upstream's git repo
NO_TEST=		Yes

.include <bsd.port.mk>
