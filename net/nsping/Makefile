# $OpenBSD: Makefile,v 1.18 2007/05/29 00:56:54 aanriot Exp $

COMMENT=	"DNS ping"

DISTNAME=	nsping-0.8
DISTFILES=	nsping.tar.gz
CATEGORIES=	net

MASTER_SITE_OPENBSD=	Yes

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

NO_REGRESS=	Yes

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/nsping ${PREFIX}/sbin
		${INSTALL_DATA} ${WRKSRC}/nsping.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
