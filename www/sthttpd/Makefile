# $OpenBSD: Makefile,v 1.1.1.1 2013/08/10 02:48:26 brad Exp $

COMMENT=	tiny/turbo/throttling HTTP server

DISTNAME=	sthttpd-2.26.3
CATEGORIES=	www
MASTER_SITES=	http://opensource.dyc.edu/pub/sthttpd/

HOMEPAGE=	http://opensource.dyc.edu/sthttpd/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

CONFIGURE_STYLE= gnu
CONFIGURE_ENV+=	WEBDIR="/var/www/htdocs" WEBGROUP=www

NO_TEST=	Yes

.include <bsd.port.mk>
