# $OpenBSD: Makefile,v 1.15 2004/05/07 15:28:31 naddy Exp $

COMMENT=	"DNS ping"

DISTNAME=	nsping
PKGNAME=	nsping-0.8
CATEGORIES=	net

MASTER_SITES=	http://www.enteract.com/~tqbf/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/${PKGNAME}

NO_REGRESS=	Yes

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/nsping ${PREFIX}/sbin
		${INSTALL_DATA} ${WRKSRC}/nsping.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
