# $OpenBSD: Makefile,v 1.17 2013/03/11 11:35:57 espie Exp $ 

COMMENT=	client program to help playing muds

DISTNAME=       tintin++v1.5pl6
PKGNAME=	tintin-1.5.6
REVISION=	0
CATEGORIES=     net games

MASTER_SITES=	http://ftp.kiae.su/pub/unix/games/
EXTRACT_SUFX=   .tar.Z

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

CONFIGURE_STYLE=	gnu old

WRKDIST=	${WRKDIR}/tintin++/src

NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/tintin
	${INSTALL_PROGRAM} ${WRKSRC}/tt++ ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/support/.tt_help.txt.Z ${PREFIX}/lib/tintin

.include <bsd.port.mk>
