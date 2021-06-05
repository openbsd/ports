# $OpenBSD: Makefile,v 1.16 2021/06/05 12:34:06 jasper Exp $

COMMENT =	BSD Auth helper program for OpenVPN

DISTNAME =	openvpn_bsdauth-7
REVISION=	3
CATEGORIES =	net
HOMEPAGE =	http://www.wormhole.hu/~ice/openvpn_bsdauth/

# ISC
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB =	c

MASTER_SITES =	${HOMEPAGE}

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/openvpn

FAKE_FLAGS =	BINDIR=${PREFIX}/libexec MANDIR=${PREFIX}/man/man

NO_TEST =	Yes

pre-configure:
	sed -i 's,!!PREFIX!!,${PREFIX},g' ${WRKSRC}/openvpn_bsdauth.8 

.include <bsd.port.mk>
