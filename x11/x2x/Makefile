# $OpenBSD: Makefile,v 1.21 2013/03/11 11:46:17 espie Exp $

COMMENT=	one keyboard/mouse to multiple X displays

DISTNAME=	x2x-1.27
REVISION=	4
CATEGORIES=    	x11

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xdmcp Xext Xtst c

MASTER_SITES=	ftp://gatekeeper.dec.com/pub/DEC/SRC/x2x/ \
		ftp://ftp.digital.de/Digital/SRC/x2x/ \
		ftp://ftp.europe.digital.com/pub/DEC/SRC/x2x/

CONFIGURE_STYLE=imake
NO_TEST=	Yes

pre-build:
	@mandoc -man ${WRKSRC}/x2x.1 > ${WRKSRC}/x2x.man

.include <bsd.port.mk>
