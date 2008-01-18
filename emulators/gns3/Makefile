# $OpenBSD: Makefile,v 1.1.1.1 2008/01/18 14:41:39 ajacoutot Exp $

COMMENT=	graphical network simulator

DISTNAME=	GNS3-0.3.2
PKGNAME=	${DISTNAME:L}
EXTRACT_SUFX= 	-src.tar.gz

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

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

.include <bsd.port.mk>
