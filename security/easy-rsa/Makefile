COMMENT =	small RSA key management package

V =		3.1.1
PKGNAME =	easy-rsa-${V}
DISTNAME =	EasyRSA-${V}
EXTRACT_SUFX =	.tgz
CATEGORIES =	security

HOMEPAGE =	https://openvpn.net/

# Use upstream commit to fix number_only option parsing
SITES.p =	https://github.com/OpenVPN/easy-rsa/commit/
PATCH_DIST_STRIP =	-p2
PATCHFILES.p =	easy-rsa-number_only-fix{4472516e24b068542cfd1ff5c3e51c3b89eb38b1}.patch

# GPLv2 only
PERMIT_PACKAGE =	Yes

SITES 	=	https://github.com/OpenVPN/easy-rsa/releases/download/v${V}/

NO_BUILD =	Yes
NO_TEST =	Yes

I =		${PREFIX}/share/easy-rsa

do-install:
	sed -i s,/usr/local,${LOCALBASE},g ${WRKSRC}/easyrsa
	${INSTALL_DATA_DIR} $I
	cd ${WRKSRC}; pax -rw * $I
	chown -R ${SHAREOWN}:${SHAREGRP} $I/*

.include <bsd.port.mk>
