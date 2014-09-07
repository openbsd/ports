# $OpenBSD: Makefile,v 1.6 2014/09/07 18:11:07 jasper Exp $

COMMENT=	extended script command

DISTNAME=	superscript-0.0
CATEGORIES=	sysutils
MASTER_SITES=	http://distfiles.nl/


WANTLIB=	c util
# BSD
PERMIT_PACKAGE_CDROM=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/superscript ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/superscript.1 ${PREFIX}/man/man1

NO_TEST=	Yes

.include <bsd.port.mk>
