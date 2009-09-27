# $OpenBSD: Makefile,v 1.8 2009/09/27 20:24:41 sthen Exp $

COMMENT=	graphical network simulator

MODPY_EGG_VERSION=	0.6.1
DISTNAME=		GNS3-${MODPY_EGG_VERSION}-src
PKGNAME=		gns3-${MODPY_EGG_VERSION}

CATEGORIES=	emulators

HOMEPAGE=	http://www.gns3.net/

MAINTAINER=	Jonathan Armani <dbd@asystant.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gns-3/}

MODULES=	lang/python
RUN_DEPENDS=	::x11/py-qt4 \
		::emulators/dynamips

NO_REGRESS=	Yes
PKG_ARCH=	*

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/GNS3/Application.py 

.include <bsd.port.mk>
