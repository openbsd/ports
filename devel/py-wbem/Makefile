# $OpenBSD: Makefile,v 1.2 2013/03/11 10:50:27 espie Exp $

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
MODPY_BADEGGS=		pywbem

.include <bsd.port.mk>
