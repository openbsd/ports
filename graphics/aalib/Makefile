# $OpenBSD: Makefile,v 1.11 2000/09/27 21:09:05 brad Exp $
# $FreeBSD: Makefile,v 1.6 1998/09/22 15:30:37 vanilla Exp $

DISTNAME=	aalib-1.2
CATEGORIES=	graphics
NEED_VERSION=	1.330
MASTER_SITES=	ftp://ftp.ta.jcu.cz/pub/aa/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:L} == "no_x11"
CONFIGURE_ARGS+= --without-x
.endif

.include <bsd.port.mk>
