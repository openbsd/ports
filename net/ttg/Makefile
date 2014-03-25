# $OpenBSD: Makefile,v 1.3 2014/03/25 01:45:27 sthen Exp $

COMMENT=	live CLI display of interface bandwidth, using SNMP

DISTNAME=	ttg-2.1

CATEGORIES=	net

HOMEPAGE=	http://www.tenox.tc/out/\#ttg

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c netsnmp

# Mirrored from http://www.tenox.tc/out/ttg.c
MASTER_SITES=	http://spacehopper.org/mirrors/

LIB_DEPENDS=	net/net-snmp

NO_TEST=	Yes

LDFLAGS=	-L${LOCALBASE}/lib -lnetsnmp

do-build:
	cd ${WRKSRC}; ${MAKE_PROGRAM} CPPFLAGS="-I${LOCALBASE}/include" \
	    LDFLAGS="${LDFLAGS}" ttg

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ttg ${PREFIX}/bin

.include <bsd.port.mk>
