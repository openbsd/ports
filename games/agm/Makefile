# $OpenBSD: Makefile,v 1.8 2000/05/31 16:39:14 espie Exp $
#

DISTNAME=		agm-1.3.1
CATEGORIES=		games
FAKE=			Yes

MAINTAINER=		angelos@openbsd.org

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
