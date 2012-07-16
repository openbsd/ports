# $OpenBSD: Makefile,v 1.1.1.1 2012/07/16 15:22:05 sthen Exp $

COMMENT=	live CLI display of interface bandwidth, using SNMP

DISTNAME=	ttg-2.0

CATEGORIES=	net

HOMEPAGE=	http://www.tenox.tc/out/\#ttg

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c netsnmp

# Mirrored from http://www.tenox.tc/out/ttg.c
MASTER_SITES=	http://spacehopper.org/mirrors/

LIB_DEPENDS=	net/net-snmp

NO_REGRESS=	Yes

LDFLAGS=	-L${LOCALBASE}/lib -lnetsnmp

do-build:
	cd ${WRKSRC}; ${MAKE_PROGRAM} CPPFLAGS="-I${LOCALBASE}/include" \
	    LDFLAGS="${LDFLAGS}" ttg

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ttg ${PREFIX}/bin

.include <bsd.port.mk>
