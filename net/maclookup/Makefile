# $OpenBSD: Makefile,v 1.4 2015/11/03 15:51:25 sthen Exp $

COMMENT=	simple filter to look up MAC address vendors

DISTNAME=	maclookup-1.3
REVISION=	0

CATEGORIES=	net textproc

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://spacehopper.org/mirrors/

RUN_DEPENDS=	net/arp-scan,-mac

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
