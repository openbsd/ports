# $OpenBSD: Makefile,v 1.8 2000/06/15 18:20:06 brad Exp $
# $FreeBSD: Makefile,v 1.6 1998/09/22 15:30:37 vanilla Exp $

DISTNAME=	aalib-1.2
CATEGORIES=	graphics
NEED_VERSION=	1.301
MASTER_SITES=	ftp://ftp.ta.jcu.cz/pub/aa/

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

.include <bsd.port.mk>
