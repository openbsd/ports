# $OpenBSD: Makefile,v 1.2 2000/12/25 03:53:36 brad Exp $

DISTNAME=	gmp-3.1.1
CATEGORIES=	devel
NEED_VERSION=	1.341
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= gmp

HOMEPAGE=	http://www.swox.com/gmp/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-extract:
	@rm -f ${WRKSRC}/gmp.info*

.include <bsd.port.mk>
