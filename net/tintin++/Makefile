# $OpenBSD: Makefile,v 1.8 2000/04/23 03:34:40 kevlo Exp $ 
# Id: Makefile,v 1.7 1996/11/18 11:36:43 asami Exp $
#

DISTNAME=       tintin++v1.5pl6
PKGNAME=	tintin-1.5.6
CATEGORIES=     net games
NEED_VERSION=	1.191

MASTER_SITES=   ftp://princeton.edu/pub/tintin++/dist/
EXTRACT_SUFX=   .tar.Z

MAINTAINER=	ports@OpenBSD.ORG

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HAS_CONFIGURE=	Yes
CONFIGURE_ARGS= --prefix='$${DESTDIR}${PREFIX}'
FAKE=		Yes

WRKDIST=         ${WRKDIR}/tintin++/src

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/tintin
	${INSTALL_PROGRAM} ${WRKSRC}/tt++ ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/support/.tt_help.txt.Z ${PREFIX}/lib/tintin

.include <bsd.port.mk>
