# $OpenBSD: Makefile,v 1.2 1998/11/24 00:10:07 marc Exp $
#

DISTNAME=		compface
PKGNAME=		compface-1.0
CATEGORIES=     	graphics

MAINTAINER=		hgweigand@wiesbaden.netsurf.de

MASTER_SITES=		ftp://ftp.xemacs.org/pub/xemacs/aux/

# Overrides for default values
#
MAKE_FLAGS=		BINDIR=${PREFIX}/bin LIBDIR=${PREFIX}/lib \
			INCDIR=${PREFIX}/include MANDIR=${PREFIX}/man \
			CC=${CC} CFLAGS=${CFLAGS} CFLAGS+=${COPTS}

.include <bsd.port.mk>
