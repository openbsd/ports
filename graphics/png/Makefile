# OpenBSD makefile for:    PNG images library
# Version required:     1.0.0
# Date created:         December 2, 1997
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.5 1998/03/21 04:59:59 marc Exp $
#

DISTNAME=       libpng-1.0.1
PKGNAME=        png-1.0.1
CATEGORIES=     graphics
MASTER_SITES=   ftp://ftp.uu.net/graphics/png/src/

MAINTAINER=     angelos@openbsd.org

pre-patch:
	cp ${WRKSRC}/scripts/makefile.std $(WRKSRC)/Makefile

post-install:
	${INSTALL_MAN} ${WRKSRC}/libpng.3 ${PREFIX}/man/man3
	${INSTALL_MAN} ${WRKSRC}/libpngpf.3 ${PREFIX}/man/man3
	${INSTALL_MAN} ${WRKSRC}/png.5 ${PREFIX}/man/man5
	${MKDIR} ${PREFIX}/share/doc/png
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/png
	${INSTALL_DATA} ${WRKSRC}/libpng.txt ${PREFIX}/share/doc/png
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
