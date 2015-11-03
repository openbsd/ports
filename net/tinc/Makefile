# $OpenBSD: Makefile,v 1.1.1.1 2015/11/03 20:07:47 sthen Exp $

COMMENT =		Virtual Private Network (VPN) daemon
DISTNAME =		tinc-1.0.26
CATEGORIES =		net security

HOMEPAGE =		http://www.tinc-vpn.org/

MAINTAINER =		Rafael Sadowski <rafael@sizeofvoid.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto lzo2 z

MASTER_SITES =		http://www.tinc-vpn.org/packages/

LIB_DEPENDS +=		archivers/lzo2

CONFIGURE_STYLE = 	gnu

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-extract:
	cd ${WRKSRC}/doc && tar xzf sample-config.tar.gz

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tinc
	cp -r ${WRKSRC}/doc/sample-config/* ${PREFIX}/share/examples/tinc/
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/examples/tinc/
	chmod -R u=rwX,go=rX ${PREFIX}/share/examples/tinc/*

.include <bsd.port.mk>
