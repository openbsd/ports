# $OpenBSD: Makefile,v 1.2 2000/02/12 06:30:07 turan Exp $
#

# 
# What port/package will be created
#
DISTNAME=		x2x-1.27
CATEGORIES=     	x11

MAINTAINER=		todd@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

MASTER_SITES=	ftp://gatekeeper.dec.com/pub/DEC/SRC/x2x/ \
		ftp://ftp.digital.de/Digital/SRC/x2x/ \
		ftp://ftp.europe.digital.com/pub/DEC/SRC/x2x/

USE_IMAKE=		yes

pre-build:
	@nroff -man ${WRKSRC}/x2x.1 > ${WRKSRC}/x2x.man 2> /dev/null

.include <bsd.port.mk>
