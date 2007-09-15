# $OpenBSD: Makefile,v 1.4 2007/09/15 20:38:21 merdely Exp $

COMMENT=	web log rotation program

DISTNAME=	cronolog-1.6.2
CATEGORIES=	www
MASTER_SITES=	http://www.cronolog.org/download/

HOMEPAGE=	http://www.cronolog.org/

MAINTAINER=	Dan Harnett <danh@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c 

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
