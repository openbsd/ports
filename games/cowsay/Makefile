# $OpenBSD: Makefile,v 1.4 2007/09/15 18:01:01 simon Exp $

COMMENT=		speaking ascii cow
DISTNAME=		cowsay-3.03
CATEGORIES=		games

HOMEPAGE=		http://www.nog.net/~tony/warez/cowsay.shtml

MAINTAINER=		Sebastian Stark <seb@todesplanet.de>

# "Same as Perl"
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.nog.net/~tony/warez/
NO_REGRESS=		Yes
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
