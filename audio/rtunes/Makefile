# $OpenBSD: Makefile,v 1.2 2006/05/29 03:45:22 fkr Exp $

COMMENT=		"Streams audio to Apple AirPort Express device"

DISTNAME=		rtunes-0.4
CATEGORIES=		audio net
MASTER_SITES=		http://www.nazgul.ch/dev/

HOMEPAGE=		http://www.nazgul.ch/dev.html

MAINTAINER=		Marcus Glocker <marcus@nazgul.ch>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rtunes/rtunes ${PREFIX}/bin/rtunes
	${INSTALL_MAN} ${WRKSRC}/rtunes/rtunes.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/rtunes/rtunes.conf.5 ${PREFIX}/man/man5
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rtunes
	${INSTALL_DATA} ${WRKSRC}/rtunes/rtunes.conf \
	    ${PREFIX}/share/examples/rtunes

.include <bsd.port.mk>
