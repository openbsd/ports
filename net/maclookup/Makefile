# $OpenBSD: Makefile,v 1.11 2020/07/11 22:54:37 sthen Exp $

COMMENT=	simple filter to look up MAC address vendors

DISTNAME=	maclookup-1.7
REVISION=	0

CATEGORIES=	net textproc

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# Public Domain
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://spacehopper.org/mirrors/

RUN_DEPENDS=	net/arp-scan,-mac \
		textproc/p5-Text-CSV \
		textproc/p5-Text-CSV_XS

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
