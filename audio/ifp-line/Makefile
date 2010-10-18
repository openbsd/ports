# $OpenBSD: Makefile,v 1.5 2010/10/18 16:52:45 espie Exp $

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

LIB_DEPENDS=	::devel/libusb

WANTLIB=	c usb.>=8

NO_REGRESS=	Yes
USE_GROFF =	Yes

.include <bsd.port.mk>
