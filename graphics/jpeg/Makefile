# $OpenBSD: Makefile,v 1.10 1999/10/29 21:57:46 brad Exp $

DISTNAME=	jpegsrc.v6b
PKGNAME=	jpeg-6b
CATEGORIES=	graphics
MASTER_SITES=	ftp://ftp.uu.net/graphics/jpeg/

NEED_VERSION=	1.73

MAINTAINER=	angelos@openbsd.org

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

WRKSRC=	${WRKDIR}/jpeg-6b

post-install:
	@${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
