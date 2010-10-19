# $OpenBSD: Makefile,v 1.6 2010/10/19 08:02:53 espie Exp $

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
USE_GROFF =	Yes

.include <bsd.port.mk>
