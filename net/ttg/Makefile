# $OpenBSD: Makefile,v 1.5 2019/03/26 21:33:52 sthen Exp $

COMMENT=	live CLI display of interface bandwidth, using SNMP

GH_ACCOUNT=	tenox7
GH_PROJECT=	ttg
GH_TAGNAME=	2.2

CATEGORIES=	net

HOMEPAGE=	http://www.tenox.tc/out/\#ttg

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c netsnmp

LIB_DEPENDS=	net/net-snmp

NO_TEST=	Yes

LDFLAGS=	-L${LOCALBASE}/lib -lnetsnmp

do-build:
	cd ${WRKSRC}; ${MAKE_PROGRAM} CPPFLAGS="-I${LOCALBASE}/include" \
	    LDFLAGS="${LDFLAGS}" ttg

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ttg ${PREFIX}/bin

.include <bsd.port.mk>
