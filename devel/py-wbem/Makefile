# $OpenBSD: Makefile,v 1.1.1.1 2012/03/31 08:30:42 sthen Exp $

COMMENT=		CIM operations over HTTP in Python

MODPY_EGG_VERSION=	0.7.0
DISTNAME=		pywbem-${MODPY_EGG_VERSION}
PKGNAME=		py-wbem-${MODPY_EGG_VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://sourceforge.net/apps/mediawiki/pywbem/

MAINTAINER=		Mark Peoples <marco@azbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=pywbem/}

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes
MODPY_BADEGGS=		pywbem

.include <bsd.port.mk>
