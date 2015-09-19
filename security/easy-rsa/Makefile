# $OpenBSD: Makefile,v 1.4 2015/09/19 12:44:38 sthen Exp $

COMMENT =	small RSA key management package

PKGNAME =	easy-rsa-2.2.0
REVISION =	1
DISTNAME =	${PKGNAME}_master
CATEGORIES =	security

HOMEPAGE =	http://openvpn.net/

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://github.com/downloads/OpenVPN/easy-rsa/

# relies on passing environment variables to $ENV:: in config files
RUN_DEPENDS =		security/openssl

CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

post-install:
	@mv ${PREFIX}/share/easy-rsa/vars{,.dist}
	perl -pi -e 's,source \./vars,. ./vars,g' \
	    ${PREFIX}/share/doc/easy-rsa/* ${PREFIX}/share/easy-rsa/*

.include <bsd.port.mk>
