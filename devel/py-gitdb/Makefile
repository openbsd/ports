# $OpenBSD: Makefile,v 1.4 2015/08/19 20:13:59 sthen Exp $

COMMENT=		Git object database

MODPY_EGG_VERSION=	0.5.4
REVISION=		0
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
