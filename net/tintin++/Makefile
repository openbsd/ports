# $OpenBSD: Makefile,v 1.10 2001/05/06 05:00:33 lebel Exp $ 
# Id: Makefile,v 1.7 1996/11/18 11:36:43 asami Exp $
#

COMMENT=	"client program to help playing muds"

DISTNAME=       tintin++v1.5pl6
PKGNAME=	tintin-1.5.6
CATEGORIES=     net games
NEED_VERSION=	1.402

MASTER_SITES=   ftp://ftp.walrus.com/pub/avatar/clients/
EXTRACT_SUFX=   .tar.Z

MAINTAINER=	ports@OpenBSD.ORG

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu old

WRKDIST=	${WRKDIR}/tintin++/src

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/tintin
	${INSTALL_PROGRAM} ${WRKSRC}/tt++ ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/support/.tt_help.txt.Z ${PREFIX}/lib/tintin

.include <bsd.port.mk>
