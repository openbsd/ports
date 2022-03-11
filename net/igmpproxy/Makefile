COMMENT =	multicast router utilizing IGMP forwarding

GH_ACCOUNT =	pali
GH_PROJECT =	igmpproxy
GH_COMMIT =	0e7186b300c063ef4015f1551100765ef5537d4c
DISTNAME =	igmpproxy-0.3.20210705

CATEGORIES =	net

HOMEPAGE =	https://github.com/pali/igmpproxy/

# GPLv2+ + mrouted license in igmpproxy/COPYING
PERMIT_PACKAGE =	Yes

WANTLIB =	c

MAKE_FLAGS =	CFLAGS="${CFLAGS} -Wall" \
		LDFLAGS="${LDFLAGS}"

CONFIGURE_STYLE =	autoreconf

DEBUG_PACKAGES =	${BUILD_PACKAGES}

AUTOCONF_VERSION =	2.63
AUTOMAKE_VERSION =	1.12
AUTORECONF =		./autogen.sh

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/igmpproxy ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/doc/igmpproxy.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/doc/igmpproxy.conf.5 ${PREFIX}/man/man5
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/igmpproxy
	${INSTALL_DATA} ${WRKSRC}/igmpproxy.conf \
	    ${PREFIX}/share/examples/igmpproxy

.include <bsd.port.mk>
