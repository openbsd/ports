# $OpenBSD: Makefile,v 1.6 2008/11/22 09:39:10 jasper Exp $

COMMENT=	convert text strings to printed bars

DISTNAME=	barcode-0.98
PKGNAME=	${DISTNAME}p1
CATEGORIES=	graphics

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB+= c

MASTER_SITES=	${MASTER_SITE_GNU:=barcode/}

CONFIGURE_STYLE= gnu dest

NO_REGRESS=Yes

.include <bsd.port.mk>
