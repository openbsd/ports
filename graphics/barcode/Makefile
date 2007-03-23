# $OpenBSD: Makefile,v 1.1.1.1 2007/03/23 04:28:26 msf Exp $

COMMENT=	"conver text strings to printed bars"

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

.include <bsd.port.mk>
