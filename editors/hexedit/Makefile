# $OpenBSD: Makefile,v 1.4 1998/10/20 08:39:45 form Exp $
# FreeBSD: Makefile,v 1.1.1.1 1998/08/10 00:31:40 steve Exp
#

DISTNAME=	hexedit-0.9.3
CATEGORIES=	editors

#BROKEN=	"newer version available"

MAINTAINER=	form@OpenBSD.ORG

MASTER_SITES=	http://www.chez.com/prigaux/
EXTRACT_SUFX=	.src.tgz

ALL_TARGET=
WRKSRC=		${WRKDIR}/hexedit

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/hexedit ${PREFIX}/bin
	@${INSTALL_MAN} ${WRKSRC}/hexedit.1 ${PREFIX}/man/man1
.if !defined(NOPORTDOCS)
	@${MKDIR} ${PREFIX}/share/doc/hexedit
.for file in COPYING Changes TODO
	@${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/doc/hexedit
.endfor
.endif

.include <bsd.port.mk>
