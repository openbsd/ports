# $OpenBSD: Makefile,v 1.3 2007/09/15 21:26:01 simon Exp $

COMMENT=	command line interface to iRiver music players

DISTNAME=	ifp-line-0.2.4.6
CATEGORIES=	audio

HOMEPAGE=	http://ifp-driver.sourceforge.net/ifp-line/

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ifp-driver/}

LIB_DEPENDS=	usb.>=8::devel/libusb

WANTLIB=	c

NO_REGRESS=	Yes

.include <bsd.port.mk>
