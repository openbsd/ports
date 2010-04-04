# $OpenBSD: Makefile,v 1.9 2010/04/04 15:09:18 naddy Exp $

COMMENT=		Streams audio to Apple AirPort Express device

DISTNAME=		rtunes-0.8
PKGNAME=		${DISTNAME}p0
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
	${INSTALL_MAN} ${WRKSRC}/rtunes/rtunes.cat1 \
	    ${PREFIX}/man/cat1/rtunes.0
	${INSTALL_MAN} ${WRKSRC}/rtunes/rtunes.conf.cat5 \
	    ${PREFIX}/man/cat5/rtunes.conf.0
	${INSTALL_DATA} ${WRKSRC}/librtunes/librtunes.a ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rtunes
	${INSTALL_DATA} ${WRKSRC}/rtunes/rtunes.conf \
	    ${PREFIX}/share/examples/rtunes
	${INSTALL_DATA} ${WRKSRC}/librtunes/README \
	    ${PREFIX}/share/examples/rtunes

.include <bsd.port.mk>
