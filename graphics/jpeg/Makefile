# $OpenBSD: Makefile,v 1.16 2000/03/24 22:11:45 espie Exp $

DISTNAME=	jpegsrc.v6b
PKGNAME=	jpeg-6b
CATEGORIES=	graphics
NEED_VERSION=	1.218
MASTER_SITES=	ftp://ftp.uu.net/graphics/jpeg/


MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes

HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=--prefix='$${DESTDIR}${PREFIX}' --sysconfdir='${DESTDIR}/etc'
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

WRKDIST=	${WRKDIR}/jpeg-6b

.include <bsd.port.mk>
