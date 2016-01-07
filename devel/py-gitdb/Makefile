# $OpenBSD: Makefile,v 1.5 2016/01/07 21:35:28 jasper Exp $

COMMENT=		Git object database

MODPY_EGG_VERSION=	0.5.4
REVISION=		1
DISTNAME=		gitdb-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODPY_PI =		Yes

MODULES=		lang/python

RUN_DEPENDS=		devel/py-async \
			devel/py-smmap

NO_TEST=		Yes

.include <bsd.port.mk>
