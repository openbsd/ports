# $OpenBSD: Makefile,v 1.11 2019/07/12 20:46:16 sthen Exp $

COMMENT=		speaking ascii cow

GH_ACCOUNT = tnalpgge
GH_PROJECT = rank-amateur-cowsay
GH_COMMIT = d66b866cf136502054e081b8714b09f7e43cd39f

DISTNAME=		cowsay-3.04

CATEGORIES=		games

HOMEPAGE=		https://web.archive.org/web/20071026043648/http://www.nog.net/~tony/warez/cowsay.shtml

# perl (we're using the commit before the change to GPLv3)
PERMIT_PACKAGE=	Yes

NO_TEST=		Yes
NO_BUILD=		Yes
PKG_ARCH=		*

do-configure:
	sed -i -e 's@%BANGPERL%@!/usr/bin/perl@; \
		s@%PREFIX%@${TRUEPREFIX}@' ${WRKSRC}/cowsay ${WRKSRC}/cowsay.1

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/cowsay ${PREFIX}/bin
	ln -s cowsay ${PREFIX}/bin/cowthink
	${INSTALL_MAN} ${WRKSRC}/cowsay.1 ${PREFIX}/man/man1
	ln -s cowsay.1 ${PREFIX}/man/man1/cowthink.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/cows
	${INSTALL_DATA} ${WRKSRC}/cows/* ${PREFIX}/share/cows

.include <bsd.port.mk>
