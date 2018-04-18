# $OpenBSD: Makefile,v 1.7 2018/04/18 09:19:23 kn Exp $

COMMENT =		Virtual Private Network (VPN) daemon
DISTNAME =		tinc-1.1pre15
CATEGORIES =		net security

HOMEPAGE =		https://www.tinc-vpn.org/

MAINTAINER =		Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto lzo2 z

MASTER_SITES =		https://www.tinc-vpn.org/packages/

LIB_DEPENDS +=		archivers/lzo2

CONFIGURE_STYLE = 	gnu

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tinc
	${TAR} -xzf ${WRKSRC}/doc/sample-config.tar.gz \
	    -C ${PREFIX}/share/examples/
	cd ${PREFIX}/share/examples/ && mv sample-config tinc
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/examples/tinc/
	chmod -R u=rwX,go=rX ${PREFIX}/share/examples/tinc/*

.include <bsd.port.mk>
