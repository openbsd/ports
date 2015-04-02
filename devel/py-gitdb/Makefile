# $OpenBSD: Makefile,v 1.3 2015/04/02 14:21:14 jasper Exp $

COMMENT=		Git object database

MODPY_EGG_VERSION=	0.5.4
DISTNAME=		gitdb-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

MODULES=		lang/python

RUN_DEPENDS=		devel/py-async \
			devel/py-smmap

NO_TEST=		Yes

.include <bsd.port.mk>
