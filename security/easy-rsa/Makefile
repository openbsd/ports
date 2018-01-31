# $OpenBSD: Makefile,v 1.7 2018/01/31 17:10:47 sthen Exp $

COMMENT =	small RSA key management package

V =		3.0.4
PKGNAME =	easy-rsa-$V
DISTNAME =	EasyRSA-$V
EXTRACT_SUFX =	.tgz
CATEGORIES =	security

HOMEPAGE =	http://openvpn.net/

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://github.com/OpenVPN/easy-rsa/releases/download/v$V/

# relies on passing environment variables to $ENV:: in config files
RUN_DEPENDS =	security/openssl

NO_BUILD =	Yes
NO_TEST =	Yes

I =		${PREFIX}/share/easy-rsa

do-install:
	sed -i s,/usr/local,${LOCALBASE},g ${WRKSRC}/easyrsa
	${INSTALL_DATA_DIR} $I
	cd ${WRKSRC}; pax -rw * $I
	rm $I/*.orig
	chown -R ${SHAREOWN}:${SHAREGRP} $I/*

.include <bsd.port.mk>
