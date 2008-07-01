# $OpenBSD: Makefile,v 1.5 2008/07/01 16:41:19 ajacoutot Exp $

COMMENT=	web log rotation program

DISTNAME=	cronolog-1.6.2
PKGNAME=	${DISTNAME}p0
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

.include <bsd.port.mk>
