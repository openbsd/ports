# $OpenBSD: Makefile,v 1.8 2014/01/01 20:46:28 naddy Exp $

COMMENT=		speaking ascii cow
DISTNAME=		cowsay-3.03
CATEGORIES=		games

HOMEPAGE=		http://www.nog.net/~tony/warez/cowsay.shtml

MAINTAINER=		Sebastian Stark <seb@todesplanet.de>

# "Same as Perl"
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://www.nog.net/~tony/warez/
NO_TEST=		Yes
NO_BUILD=		Yes
PKG_ARCH=		*

do-configure:
	perl -pi -e 's@%BANGPERL%@!/usr/bin/perl@; \
		s@%PREFIX%@${TRUEPREFIX}@' ${WRKSRC}/cowsay ${WRKSRC}/cowsay.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cowsay ${PREFIX}/bin
	ln -s cowsay ${PREFIX}/bin/cowthink
	${INSTALL_MAN} ${WRKSRC}/cowsay.1 ${PREFIX}/man/man1
	ln -s cowsay.1 ${PREFIX}/man/man1/cowthink.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/cows
	${INSTALL_DATA} ${WRKSRC}/cows/* ${FILESDIR}/blowfish.cow \
		${PREFIX}/share/cows
	
.include <bsd.port.mk>
