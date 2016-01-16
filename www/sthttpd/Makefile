# $OpenBSD: Makefile,v 1.3 2016/01/16 20:05:35 mmcc Exp $

COMMENT=	tiny/turbo/throttling HTTP server

DISTNAME=	sthttpd-2.26.4
REVISION=	0
CATEGORIES=	www
MASTER_SITES=	http://opensource.dyc.edu/pub/sthttpd/

HOMEPAGE=	http://opensource.dyc.edu/sthttpd/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

CONFIGURE_STYLE= gnu
CONFIGURE_ENV+=	WEBDIR="/var/www/htdocs" WEBGROUP=www

FAKE_FLAGS=	cgidir="${PREFIX}/libexec/sthttpd"

NO_TEST=	Yes

.include <bsd.port.mk>
