# $OpenBSD: Makefile,v 1.9 2012/09/04 03:40:33 jeremy Exp $

COMMENT=	convert text strings to printed bars

DISTNAME=	barcode-0.98
REVISION =	2
CATEGORIES=	graphics

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB+= c

MASTER_SITES=	${MASTER_SITE_GNU:=barcode/}

CONFIGURE_STYLE= gnu dest

USE_GROFF =	Yes
NO_REGRESS=Yes

.include <bsd.port.mk>
