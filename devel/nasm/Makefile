# $OpenBSD: Makefile,v 1.5 1999/04/05 10:27:34 rohee Exp $

DISTNAME=	nasm-0.97
CATEGORIES=	devel lang

RESTRICTED=	"license required if incorporated into commercial product"

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	devel/lang/assemblers

GNU_CONFIGURE=	yes

post-install:
	${MKDIR} ${PREFIX}/share/doc/nasm
	${INSTALL_MAN} ${WRKSRC}/*.doc ${PREFIX}/share/doc/nasm
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${PREFIX}/share/doc/nasm
	${INSTALL_DATA} ${WRKSRC}/doc/nasmdoc.ps ${PREFIX}/share/doc/nasm
	${INSTALL_DATA} ${WRKSRC}/doc/nasmdoc.src ${PREFIX}/share/doc/nasm
	${INSTALL_DATA} ${WRKSRC}/doc/nasmdoc.txt ${PREFIX}/share/doc/nasm
	${INSTALL_SCRIPT} ${WRKSRC}/doc/rdsrc.pl ${PREFIX}/share/doc/nasm
	${MKDIR} ${PREFIX}/info
	${INSTALL_DATA} $(WRKSRC)/doc/nasm.info $(PREFIX)/info
	test -f ${PREFIX}/info/dir || \
		sed -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir
	install-info ${PREFIX}/info/nasm.info ${PREFIX}/info/dir

.include <bsd.port.mk>
