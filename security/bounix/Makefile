# $OpenBSD: Makefile,v 1.11 2002/10/28 17:35:01 naddy Exp $

COMMENT=	"Back Orifice Unix client by the cDc"

PKGNAME=	bounix-1.21
DISTNAME=	bo121unix

CATEGORIES=     security

MASTER_SITES=	http://orifice.rotten.com/cDc/ \
		http://www.cultdeadcow.com/tools/

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu

WRKDIST=	${WRKDIR}/bo

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bounix ${PREFIX}/bin

.include <bsd.port.mk>
