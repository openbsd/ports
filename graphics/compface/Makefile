# OpenBSD makefile for:	compface
# Version required:	<n/a>
# Date created:		25 September 1998
# Whom:			Hans Guenter Weigand
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/09/25 03:34:31 marc Exp $
#

# What port/package will be created
#
DISTNAME=		compface
PKGNAME=		compface-1.0
CATEGORIES=     	graphics

MAINTAINER=		hgweigand@wiesbaden.netsurf.de

# where the source files and patches can be fetched
#
MASTER_SITES=		ftp://ftp.xemacs.org/pub/xemacs/aux/

# Overrides for default values
#
MAKE_FLAGS=		BINDIR=${PREFIX}/bin LIBDIR=${PREFIX}/lib \
			INCDIR=${PREFIX}/include MANDIR=${PREFIX}/man \
			CC=${CC} CFLAGS=${CFLAGS} CFLAGS+=${COPTS}

.include <bsd.port.mk>
