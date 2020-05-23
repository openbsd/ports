# $OpenBSD: Makefile,v 1.3 2020/05/23 02:44:01 afresh1 Exp $

COMMENT=	filter which improves readability of email and Usenet posts

DISTNAME=	t-prot-3.4
CATEGORIES=	mail news

MAINTAINER=	Andrew Fresh <afresh1@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

HOMEPAGE=		https://www.escape.de/~tolot/mutt/
MASTER_SITES=		${HOMEPAGE}/t-prot/downloads/

NO_BUILD=		Yes
NO_TEST=		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/t-prot ${PREFIX}/bin
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/t-prot.1 ${PREFIX}/man/man1/t-prot.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/t-prot/
	${INSTALL_DATA} ${WRKSRC}/ChangeLog ${PREFIX}/share/doc/t-prot/
	${INSTALL_DATA} ${WRKSRC}/README    ${PREFIX}/share/doc/t-prot/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/t-prot
	${INSTALL_DATA} ${WRKSRC}/contrib/* ${PREFIX}/share/examples/t-prot/

.include <bsd.port.mk>
