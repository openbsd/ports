# $OpenBSD: Makefile,v 1.6 1999/03/28 20:25:15 brad Exp $
# $FreeBSD: Makefile,v 1.1.1.1 1998/08/10 00:31:40 steve Exp $

DISTNAME=	hexedit-1.1.0
CATEGORIES=	editors

MAINTAINER=	brad@openbsd.org

MASTER_SITES=	http://www.chez.com/prigaux/
EXTRACT_SUFX=	.src.tgz

GNU_CONFIGURE=	YES
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
