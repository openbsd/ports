# $OpenBSD: Makefile,v 1.20 2000/10/22 14:03:20 espie Exp $

DISTNAME=	jpegsrc.v6b
PKGNAME=	jpeg-6b
CATEGORIES=	graphics
NEED_VERSION=	1.310
MASTER_SITES=	ftp://ftp.uu.net/graphics/jpeg/

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

WRKDIST=	${WRKDIR}/jpeg-6b

.include <bsd.port.mk>
