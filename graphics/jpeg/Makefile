# $OpenBSD: Makefile,v 1.12 2000/02/12 06:29:54 turan Exp $

DISTNAME=	jpegsrc.v6b
PKGNAME=	jpeg-6b
CATEGORIES=	graphics
MASTER_SITES=	ftp://ftp.uu.net/graphics/jpeg/

NEED_VERSION=	1.191

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

GNU_CONFIGURE=	Yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

WRKDIST=	${WRKDIR}/jpeg-6b

post-install:
	@${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
