# $OpenBSD: Makefile,v 1.11 2000/02/10 10:34:22 espie Exp $

DISTNAME=	jpegsrc.v6b
PKGNAME=	jpeg-6b
CATEGORIES=	graphics
MASTER_SITES=	ftp://ftp.uu.net/graphics/jpeg/

NEED_VERSION=	1.191

MAINTAINER=	angelos@openbsd.org

GNU_CONFIGURE=	Yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

WRKDIST=	${WRKDIR}/jpeg-6b

post-install:
	@${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
