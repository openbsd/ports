# $OpenBSD: Makefile,v 1.12 2002/10/28 01:38:45 naddy Exp $

COMMENT=	"DNS ping"

DISTNAME=	nsping
PKGNAME=	nsping-0.8
CATEGORIES=	net

MASTER_SITES=	http://www.enteract.com/~tqbf/

MAINTAINER=	Dug Song <dugsong@monkey.org>

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
