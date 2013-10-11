# $OpenBSD: Makefile,v 1.5 2013/10/11 23:51:02 naddy Exp $

COMMENT=	extended script command

DISTNAME=	superscript-0.0
CATEGORIES=	sysutils
MASTER_SITES=	ftp://quatramaran.ens.fr/pub/espie/


WANTLIB=	c util
# BSD
PERMIT_PACKAGE_CDROM=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/superscript ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/superscript.1 ${PREFIX}/man/man1

NO_TEST=	Yes

.include <bsd.port.mk>
