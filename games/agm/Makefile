# $OpenBSD: Makefile,v 1.14 2002/10/26 20:44:38 naddy Exp $
#

COMMENT=		"AnaGram search utility"

DISTNAME=		agm-1.3.1
CATEGORIES=		games

MAINTAINER=		Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	"no license available"
PERMIT_PACKAGE_FTP=	"no license available"
PERMIT_DISTFILES_CDROM=	"no license available"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SUNSITE:=games/amusements/}

NO_REGRESS=		Yes

do-install:
	@ ${INSTALL_PROGRAM} ${WRKSRC}/agm ${PREFIX}/bin
	@ ${INSTALL_MAN} ${WRKSRC}/agm.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
