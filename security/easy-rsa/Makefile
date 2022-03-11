COMMENT =	small RSA key management package

V =		3.0.8
PKGNAME =	easy-rsa-$V
DISTNAME =	EasyRSA-$V
EXTRACT_SUFX =	.tgz
CATEGORIES =	security

HOMEPAGE =	https://openvpn.net/

# GPLv2 only
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/OpenVPN/easy-rsa/releases/download/v$V/

NO_BUILD =	Yes
NO_TEST =	Yes

I =		${PREFIX}/share/easy-rsa

do-install:
	sed -i s,/usr/local,${LOCALBASE},g ${WRKSRC}/easyrsa
	${INSTALL_DATA_DIR} $I
	cd ${WRKSRC}; pax -rw * $I
	chown -R ${SHAREOWN}:${SHAREGRP} $I/*

.include <bsd.port.mk>
