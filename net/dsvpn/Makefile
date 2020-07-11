# $OpenBSD: Makefile,v 1.4 2020/07/11 22:54:37 sthen Exp $

COMMENT=	small and simple TCP VPN with modern crypto

GH_ACCOUNT=	jedisct1
GH_PROJECT=	dsvpn
GH_TAGNAME=	0.1.4
REVISION=	0

CATEGORIES=	net

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# ISC
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB += c

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dsvpn ${PREFIX}/sbin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dsvpn
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/dsvpn/

.include <bsd.port.mk>
