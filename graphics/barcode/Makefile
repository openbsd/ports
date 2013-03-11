# $OpenBSD: Makefile,v 1.10 2013/03/11 11:10:51 espie Exp $

COMMENT=	convert text strings to printed bars

DISTNAME=	barcode-0.98
REVISION =	2
CATEGORIES=	graphics

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB+= c

MASTER_SITES=	${MASTER_SITE_GNU:=barcode/}

CONFIGURE_STYLE= gnu dest

USE_GROFF =	Yes
NO_TEST=Yes

.include <bsd.port.mk>
