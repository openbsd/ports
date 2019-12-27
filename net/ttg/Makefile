# $OpenBSD: Makefile,v 1.7 2019/12/27 22:33:37 sthen Exp $

COMMENT=	live CLI display of interface bandwidth, using SNMP

GH_ACCOUNT=	tenox7
GH_PROJECT=	ttg
GH_TAGNAME=	2.2
REVISION=	0

CATEGORIES=	net

HOMEPAGE=	http://www.tenox.tc/out/\#ttg

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c m netsnmp

LIB_DEPENDS=	net/net-snmp

NO_TEST=	Yes

LDFLAGS=	-L${LOCALBASE}/lib -lm -lnetsnmp

do-build:
	cd ${WRKSRC}; ${MAKE_PROGRAM} CPPFLAGS="-I${LOCALBASE}/include" \
	    LDFLAGS="${LDFLAGS}" ttg

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ttg ${PREFIX}/bin

.include <bsd.port.mk>
