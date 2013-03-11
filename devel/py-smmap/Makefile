# $OpenBSD: Makefile,v 1.4 2013/03/11 10:50:26 espie Exp $

COMMENT=		pure Python implementation of an SMM manager

MODPY_EGG_VERSION=	0.8.2
DISTNAME=		smmap-${MODPY_EGG_VERSION}
REVISION=		1
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=s/smmap/}

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

.include <bsd.port.mk>
