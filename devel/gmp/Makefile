# $OpenBSD: Makefile,v 1.6 2002/05/13 18:50:39 espie Exp $

COMMENT=	library for arbitrary precision arithmetic

DISTNAME=	gmp-3.1.1
CATEGORIES=	devel math
NEED_VERSION=	1.363

MASTER_SITES=	${MASTER_SITE_GNU:=gmp/}

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

post-build:
	ranlib ${WRKBUILD}/.libs/libgmp.a

.include <bsd.port.mk>
