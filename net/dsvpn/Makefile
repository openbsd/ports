# $OpenBSD: Makefile,v 1.3 2019/12/09 15:01:07 sthen Exp $

COMMENT=	small and simple TCP VPN with modern crypto

GH_ACCOUNT=	jedisct1
GH_PROJECT=	dsvpn
GH_TAGNAME=	0.1.4

CATEGORIES=	net

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

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
