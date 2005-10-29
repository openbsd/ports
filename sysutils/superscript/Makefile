# $OpenBSD: Makefile,v 1.1.1.1 2005/10/29 09:45:49 espie Exp $

COMMENT=	"extended script command"

DISTNAME=	superscript-0.0
CATEGORIES=	sysutils
MASTER_SITES=	ftp://quatramaran.ens.fr/pub/espie/


WANTLIB=	c util
# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/superscript ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/superscript.1 ${PREFIX}/man/man1

NO_REGRESS=	Yes

.include <bsd.port.mk>
