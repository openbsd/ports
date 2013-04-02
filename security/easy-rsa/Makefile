# $OpenBSD: Makefile,v 1.1.1.1 2013/04/02 11:40:36 sthen Exp $

COMMENT =	small RSA key management package

PKGNAME =	easy-rsa-2.2.0
DISTNAME =	${PKGNAME}_master
CATEGORIES =	security

HOMEPAGE =	http://openvpn.net/

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://github.com/downloads/OpenVPN/easy-rsa/

CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

post-install:
	@mv ${PREFIX}/share/easy-rsa/vars{,.dist}

.include <bsd.port.mk>
