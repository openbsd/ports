# $OpenBSD: Makefile,v 1.1.1.1 1999/03/01 10:39:00 todd Exp $
#

# 
# What port/package will be created
#
DISTNAME=		x2x-1.27
CATEGORIES=     	x11

MAINTAINER=		todd@openbsd.org

MASTER_SITES=	ftp://gatekeeper.dec.com/pub/DEC/SRC/x2x/ \
		ftp://ftp.digital.de/Digital/SRC/x2x/ \
		ftp://ftp.europe.digital.com/pub/DEC/SRC/x2x/

USE_IMAKE=		yes

pre-build:
	@nroff -man ${WRKSRC}/x2x.1 > ${WRKSRC}/x2x.man 2> /dev/null

.include <bsd.port.mk>
