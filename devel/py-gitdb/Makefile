# $OpenBSD: Makefile,v 1.2 2013/03/11 10:50:25 espie Exp $

COMMENT=		Git object database

MODPY_EGG_VERSION=	0.5.4
DISTNAME=		gitdb-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=g/gitdb/}

MODULES=		lang/python

RUN_DEPENDS=		devel/py-async \
			devel/py-smmap

NO_TEST=		Yes

.include <bsd.port.mk>
