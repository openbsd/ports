# $OpenBSD: Makefile,v 1.8 2000/02/12 06:30:08 turan Exp $

DISTNAME=	xfed
PKGNAME=	xfed-1.0
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.demon.co.uk/pub/graphics/systems/X11.old/pub/R6untarred/contrib/programs/

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

USE_IMAKE=	yes

# As the xfed tarball is created on the fly the checksum will always
# be incorrect; so don't bother...
#
NO_CHECKSUM=	yes

.include <bsd.port.mk>
