# $OpenBSD: Makefile,v 1.7 1999/02/21 04:26:12 marc Exp $
#

DISTNAME=       libpng-1.0.2
PKGNAME=        png-1.0.2
CATEGORIES=     graphics

NEED_VERSION=	1.64

MAINTAINER=     angelos@openbsd.org

MASTER_SITES=   ftp://ftp.uu.net/graphics/png/src/

post-extract:
	@chmod +w ${WRKSRC}/scripts

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
