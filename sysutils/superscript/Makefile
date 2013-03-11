# $OpenBSD: Makefile,v 1.4 2013/03/11 11:41:32 espie Exp $

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

USE_GROFF =	Yes
NO_TEST=	Yes

.include <bsd.port.mk>
