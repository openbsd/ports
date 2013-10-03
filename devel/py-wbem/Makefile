# $OpenBSD: Makefile,v 1.3 2013/10/03 16:37:16 dcoppa Exp $

COMMENT=		CIM operations over HTTP in Python

MODPY_EGG_VERSION=	0.7.0
DISTNAME=		pywbem-${MODPY_EGG_VERSION}
PKGNAME=		py-wbem-${MODPY_EGG_VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://sourceforge.net/apps/mediawiki/pywbem/

MAINTAINER=		Mark Peoples <marco@azbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=pywbem/}

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

.include <bsd.port.mk>
