# $OpenBSD: Makefile,v 1.3 2007/09/15 20:09:40 simon Exp $

COMMENT=	conver text strings to printed bars

DISTNAME=	barcode-0.98
CATEGORIES=	graphics

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB+= c

MASTER_SITES=	${MASTER_SITE_GNU:=barcode/}

CONFIGURE_STYLE= gnu dest

NO_REGRESS=Yes

.include <bsd.port.mk>
