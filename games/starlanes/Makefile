# $OpenBSD: Makefile,v 1.9 2000/10/22 14:03:14 espie Exp $

DISTNAME=	starlanes-1.2.2
CATEGORIES=	games
FAKE=		Yes
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= games/strategy

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

ALL_TARGET=

pre-build:
	@rm ${WRKSRC}/starlanes

do-install:
	@mkdir -p ${PREFIX}/share/doc/starlanes
	${INSTALL_PROGRAM} ${WRKSRC}/starlanes ${PREFIX}/bin/starlanes
	${INSTALL_MAN} ${WRKSRC}/starlanes.6 ${PREFIX}/man/man6
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/starlanes/COPYING
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/starlanes/README

.include <bsd.port.mk>
