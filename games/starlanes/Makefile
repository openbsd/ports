# $OpenBSD: Makefile,v 1.18 2002/12/23 00:37:50 pvalchev Exp $

COMMENT=	"classic space-age stock trading game"

DISTNAME=	starlanes-1.2.2
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_SUNSITE:=games/strategy/}

# License: GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MAKE_FLAGS=	CC="${CC}"
ALL_TARGET=

NO_REGRESS=	Yes

pre-build:
	@rm ${WRKSRC}/starlanes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/starlanes
	${INSTALL_PROGRAM} ${WRKSRC}/starlanes ${PREFIX}/bin/starlanes
	${INSTALL_MAN} ${WRKSRC}/starlanes.6 ${PREFIX}/man/man6
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/starlanes/COPYING
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/starlanes/README

.include <bsd.port.mk>
