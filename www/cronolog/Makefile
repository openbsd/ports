# $OpenBSD: Makefile,v 1.7 2010/11/11 12:35:09 sthen Exp $

COMMENT=	web log rotation program

DISTNAME=	cronolog-1.6.2
REVISION=	0
CATEGORIES=	www
MASTER_SITES=	http://www.cronolog.org/download/

HOMEPAGE=	http://www.cronolog.org/

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c 

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
USE_GROFF =	Yes

.include <bsd.port.mk>
