# $OpenBSD: Makefile,v 1.1.1.1 2013/01/21 14:30:24 jasper Exp $

COMMENT=		Git object database

MODPY_EGG_VERSION=	0.5.4
DISTNAME=		gitdb-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=g/gitdb/}

MODULES=		lang/python

RUN_DEPENDS=		devel/py-async \
			devel/py-smmap

NO_REGRESS=		Yes

.include <bsd.port.mk>
