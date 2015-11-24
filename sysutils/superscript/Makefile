# $OpenBSD: Makefile,v 1.7 2015/11/24 09:11:06 jasper Exp $

COMMENT=	extended script command

DISTNAME=	superscript-0.0
CATEGORIES=	sysutils
MASTER_SITES=	https://distfiles.nl/


WANTLIB=	c util
# BSD
PERMIT_PACKAGE_CDROM=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/superscript ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/superscript.1 ${PREFIX}/man/man1

NO_TEST=	Yes

.include <bsd.port.mk>
