# $OpenBSD: Makefile,v 1.15 2021/01/03 22:53:18 kn Exp $

COMMENT =		Virtual Private Network (VPN) daemon
DISTNAME =		tinc-1.1pre17
CATEGORIES =		net security
EPOCH =			0

HOMEPAGE =		https://www.tinc-vpn.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=		c crypto curses lzo2 m readline z

MASTER_SITES =		https://www.tinc-vpn.org/packages/

LIB_DEPENDS +=		archivers/lzo2

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			tinc_cv_attribute___nonnull__=yes

USE_GMAKE =		Yes

TEST_IS_INTERACTIVE =	XXX spawns tincd processes, \
			${WRKSRC}/test/legacy-protocol.test stalls

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tinc
	cp -r ${WRKSRC}/doc/sample-config/* ${PREFIX}/share/examples/tinc/
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/examples/tinc/
	chmod -R u=rwX,go=rX ${PREFIX}/share/examples/tinc/*

.include <bsd.port.mk>
