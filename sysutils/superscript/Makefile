COMMENT=	extended script command

DISTNAME=	superscript-0.0
CATEGORIES=	sysutils
MASTER_SITES=	https://distfiles.sigtrap.nl/


WANTLIB=	c util
# BSD
PERMIT_PACKAGE=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/superscript ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/superscript.1 ${PREFIX}/man/man1

NO_TEST=	Yes

.include <bsd.port.mk>
