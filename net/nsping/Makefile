# $OpenBSD: Makefile,v 1.14 2004/02/01 16:23:36 jose Exp $

COMMENT=	"DNS ping"

DISTNAME=	nsping
PKGNAME=	nsping-0.8
CATEGORIES=	net

MAINTAINER=	Jose Nazario <jose@crimelabs.net>

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
