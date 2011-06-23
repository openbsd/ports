# $OpenBSD: Makefile,v 1.13 2011/06/23 22:50:27 naddy Exp $

COMMENT=		Streams audio to Apple AirPort Express device

DISTNAME=		rtunes-0.8
REVISION=		0
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

MAKE_FLAGS=		-DNOPIC -DNOPROFILE
FAKE_FLAGS=		BINDIR=${PREFIX}/bin LIBDIR=${PREFIX}/lib \
			MANDIR=${PREFIX}/man/man

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rtunes
	${INSTALL_DATA} ${WRKSRC}/rtunes/rtunes.conf \
	    ${PREFIX}/share/examples/rtunes
	${INSTALL_DATA} ${WRKSRC}/librtunes/README \
	    ${PREFIX}/share/examples/rtunes

.include <bsd.port.mk>
