# $OpenBSD: Makefile,v 1.22 2013/01/30 01:45:20 brad Exp $

COMMENT=	DNS ping

DISTNAME=	nsping-0.8
REVISION=	0
DISTFILES=	nsping.tar.gz
CATEGORIES=	net

MASTER_SITES=	${MASTER_SITE_OPENBSD}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c

MAKE_FLAGS=	CC="${CC}"

NO_REGRESS=	Yes

pre-build:
	@perl -pi -e s,dprintf,debugprintf, ${WRKSRC}/nsping.*

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nsping ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/nsping.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
