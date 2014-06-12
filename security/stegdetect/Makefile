# $OpenBSD: Makefile,v 1.16 2014/06/12 18:21:12 sthen Exp $

COMMENT=	steganography detection tool
DISTNAME=	stegdetect-0.6
REVISION=	4
CATEGORIES=	security graphics
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.outguess.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto m

NO_TEST=	Yes

AUTOCONF_VERSION= 2.52
CONFIGURE_STYLE=  autoconf

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/{stegdetect,stegbreak} ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/*.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
