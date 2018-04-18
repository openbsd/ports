# $OpenBSD: Makefile,v 1.13 2018/04/18 17:10:53 jasper Exp $

COMMENT =	BSD Auth helper program for OpenVPN

DISTNAME =	openvpn_bsdauth-7
REVISION=	1
CATEGORIES =	net
HOMEPAGE =	http://www.wormhole.hu/~ice/openvpn_bsdauth/

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

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
