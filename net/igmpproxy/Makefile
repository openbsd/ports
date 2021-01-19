# $OpenBSD: Makefile,v 1.21 2021/01/19 10:50:12 sthen Exp $

COMMENT =	multicast router utilizing IGMP forwarding

VERSION =	0.3
REVISION =	0
DISTNAME =	igmpproxy-${VERSION}
CATEGORIES =	net
MASTER_SITES =	https://github.com/pali/igmpproxy/releases/download/${VERSION}/

HOMEPAGE =	https://github.com/pali/igmpproxy/

# GPLv2+ + mrouted license in igmpproxy/COPYING
PERMIT_PACKAGE =	Yes

WANTLIB =	c

USE_GMAKE =	Yes

CFLAGS +=	-Wall
MAKE_FLAGS =	LDFLAGS="${LDFLAGS}"
DEBUG_PACKAGES = ${BUILD_PACKAGES}

NO_TEST =	Yes

CONFIGURE_STYLE =	gnu

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/igmpproxy ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/doc/igmpproxy.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/doc/igmpproxy.conf.5 ${PREFIX}/man/man5
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/igmpproxy
	${INSTALL_DATA} ${WRKSRC}/igmpproxy.conf \
	    ${PREFIX}/share/examples/igmpproxy

.include <bsd.port.mk>
