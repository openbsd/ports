# $OpenBSD: Makefile,v 1.5 2009/03/15 13:31:58 espie Exp $

COMMENT=	graphical network simulator

MODPY_EGG_VERSION=	0.5
V=			0.6
DISTNAME=		GNS3-$V-src
PKGNAME=		gns3-$Vp0

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
BUILD_DEPENDS=	${_MODPY_BUILD_DEPENDS}
RUN_DEPENDS=	::x11/py-qt4 \
		::emulators/dynamips

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

.include <bsd.port.mk>
