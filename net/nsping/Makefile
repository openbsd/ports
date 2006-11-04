# $OpenBSD: Makefile,v 1.17 2006/11/04 19:19:15 kili Exp $

COMMENT=	"DNS ping"

DISTNAME=	nsping-0.8
DISTFILES=	nsping.tar.gz
CATEGORIES=	net

MASTER_SITES=	http://www.enteract.com/~tqbf/

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
