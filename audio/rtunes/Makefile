# $OpenBSD: Makefile,v 1.1.1.1 2006/04/12 07:10:25 mbalmer Exp $

COMMENT=		"Streams audio to Apple AirPort Express device"

DISTNAME=		rtunes-0.3
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
	${INSTALL_PROGRAM} ${WRKSRC}/rtunes ${PREFIX}/bin/rtunes
	${INSTALL_MAN} ${WRKSRC}/rtunes.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/rtunes.conf.5 ${PREFIX}/man/man5
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rtunes
	${INSTALL_DATA} ${WRKSRC}/rtunes.conf ${PREFIX}/share/examples/rtunes

.include <bsd.port.mk>
