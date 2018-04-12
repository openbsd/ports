# $OpenBSD: Makefile,v 1.9 2018/04/12 07:25:12 sthen Exp $

COMMENT=		speaking ascii cow

DISTNAME=		cowsay-3.03
REVISION=		0

CATEGORIES=		games

HOMEPAGE=		https://web.archive.org/web/20071026043648/http://www.nog.net/~tony/warez/cowsay.shtml

# perl
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://spacehopper.org/mirrors/

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
	${INSTALL_DATA} ${WRKSRC}/cows/* ${FILESDIR}/blowfish.cow \
		${PREFIX}/share/cows

.include <bsd.port.mk>
