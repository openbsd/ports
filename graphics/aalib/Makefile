# $OpenBSD: Makefile,v 1.13 2001/04/13 22:09:41 brad Exp $
# $FreeBSD: Makefile,v 1.6 1998/09/22 15:30:37 vanilla Exp $

COMMENT=	"ascii art library"

DISTNAME=	aalib-1.2
CATEGORIES=	graphics
NEED_VERSION=	1.384
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= libs/graphics

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

post-extract:
	@cd ${WRKSRC}; rm -f {config.cache,config.h,config.log,config.status}
	@cp -f ${FILESDIR}/config.cache ${WRKSRC}

.include <bsd.port.mk>
