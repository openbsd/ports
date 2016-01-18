# $OpenBSD: Makefile,v 1.4 2016/01/18 17:03:39 mmcc Exp $

COMMENT=	tiny/turbo/throttling HTTP server

DISTNAME=	sthttpd-2.26.4
REVISION=	1
CATEGORIES=	www
MASTER_SITES=	http://opensource.dyc.edu/pub/sthttpd/

HOMEPAGE=	http://opensource.dyc.edu/sthttpd/

MAINTAINER=	Michael McConville <mmcco@mykolab.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

CONFIGURE_STYLE= gnu
CONFIGURE_ENV+=	WEBDIR="/var/www/htdocs" WEBGROUP=www

FAKE_FLAGS=	cgidir="${PREFIX}/libexec/sthttpd"

NO_TEST=	Yes

.include <bsd.port.mk>
