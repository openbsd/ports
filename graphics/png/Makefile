# OpenBSD makefile for:    PNG images library
# Version required:     1.0.0
# Date created:         December 2, 1997
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.4 1998/03/13 00:37:52 jason Exp $
#

DISTNAME=       libpng-1.0.0
PKGNAME=        png-1.0.0
CATEGORIES=     graphics
MASTER_SITES=   ftp://ftp.uu.net/graphics/png/src/

MAINTAINER=     angelos@openbsd.org

pre-patch:
	cp ${WRKSRC}/scripts/makefile.std $(WRKSRC)/Makefile

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
