# OpenBSD makefile for:    xfed
# Date created:         May 18 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.5 1999/10/31 09:42:43 angelos Exp $
#

BROKEN=		waiting for turans@ to verify

DISTNAME=	xfed
PKGNAME=	xfed-1.0
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.demon.co.uk/pub/graphics/systems/X11.old/pub/R6untarred/contrib/programs/

MAINTAINER=	angelos@openbsd.org

USE_IMAKE=	yes
MAKE_FLAGS=	MANDIR=${PREFIX}/man/man1
BINDIR=${PREFIX}/bin -f

# As the xfed tarball is created on the fly the checksum will always
# be incorrect; so don't bother...
#
NO_CHECKSUM=	yes

pre-clean:
	-rm -rf ${.CURDIR}/src

.include <bsd.port.mk>
