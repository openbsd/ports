# $OpenBSD: Makefile,v 1.7 2000/01/16 05:18:21 brad Exp $

DISTNAME=	nasm-0.97
CATEGORIES=	devel lang
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= devel/lang/assemblers

RESTRICTED=	"license required if incorporated into commercial product"

MAINTAINER=	angelos@openbsd.org

SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nasm
	${INSTALL_MAN} ${WRKSRC}/*.doc ${PREFIX}/share/doc/nasm
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${PREFIX}/share/doc/nasm
	${INSTALL_DATA} ${WRKSRC}/doc/nasmdoc.ps ${PREFIX}/share/doc/nasm
	${INSTALL_DATA} ${WRKSRC}/doc/nasmdoc.src ${PREFIX}/share/doc/nasm
	${INSTALL_DATA} ${WRKSRC}/doc/nasmdoc.txt ${PREFIX}/share/doc/nasm
	${INSTALL_SCRIPT} ${WRKSRC}/doc/rdsrc.pl ${PREFIX}/share/doc/nasm
	${INSTALL_DATA} ${WRKSRC}/doc/nasm.info $(PREFIX)/info
	@install-info ${PREFIX}/info/nasm.info ${PREFIX}/info/dir

.include <bsd.port.mk>
