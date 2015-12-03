# $OpenBSD: Makefile,v 1.7 2015/12/03 21:24:31 sthen Exp $

COMMENT=	simple filter to look up MAC address vendors

DISTNAME=	maclookup-1.5

CATEGORIES=	net textproc

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://spacehopper.org/mirrors/

RUN_DEPENDS=	net/arp-scan,-mac \
		textproc/p5-Text-CSV

NO_BUILD=	Yes
NO_TEST=	Yes

PKG_ARCH=	*

do-configure:
	cd ${WRKSRC}; \
	    perl -pi -e 's,/usr/local,${LOCALBASE},g' maclookup.pl maclookup.1

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/maclookup.pl ${PREFIX}/bin/maclookup
	${INSTALL_MAN} ${WRKSRC}/maclookup.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
