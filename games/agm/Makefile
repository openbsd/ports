# $OpenBSD: Makefile,v 1.11 2001/05/06 01:06:10 lebel Exp $
#

COMMENT=		"AnaGram search utility"

DISTNAME=		agm-1.3.1
CATEGORIES=		games
NEED_VERSION=		1.402

MAINTAINER=		Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	"no license available"
PERMIT_PACKAGE_FTP=	"no license available"
PERMIT_DISTFILES_CDROM=	"no license available"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	games/amusements

do-install:
	@ ${INSTALL_PROGRAM} ${WRKSRC}/agm ${PREFIX}/bin
	@ ${INSTALL_MAN} ${WRKSRC}/agm.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
