# $OpenBSD: Makefile,v 1.5 2000/10/22 14:03:59 espie Exp $
#

# 
# What port/package will be created
#
DISTNAME=		x2x-1.27
CATEGORIES=     	x11

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
FAKE=			Yes

MASTER_SITES=	ftp://gatekeeper.dec.com/pub/DEC/SRC/x2x/ \
		ftp://ftp.digital.de/Digital/SRC/x2x/ \
		ftp://ftp.europe.digital.com/pub/DEC/SRC/x2x/

USE_IMAKE=		Yes

pre-build:
	@nroff -man ${WRKSRC}/x2x.1 > ${WRKSRC}/x2x.man 2> /dev/null

.include <bsd.port.mk>
