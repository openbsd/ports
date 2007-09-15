# $OpenBSD: Makefile,v 1.14 2007/09/15 22:36:59 merdely Exp $ 

COMMENT=	client program to help playing muds

DISTNAME=       tintin++v1.5pl6
PKGNAME=	tintin-1.5.6
CATEGORIES=     net games

MASTER_SITES=   ftp://ftp.walrus.com/pub/avatar/clients/
EXTRACT_SUFX=   .tar.Z

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c 

CONFIGURE_STYLE=	gnu old

WRKDIST=	${WRKDIR}/tintin++/src

NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/tintin
	${INSTALL_PROGRAM} ${WRKSRC}/tt++ ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/support/.tt_help.txt.Z ${PREFIX}/lib/tintin

.include <bsd.port.mk>
