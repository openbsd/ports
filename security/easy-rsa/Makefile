# $OpenBSD: Makefile,v 1.2 2013/09/14 21:59:59 sthen Exp $

COMMENT =	small RSA key management package

PKGNAME =	easy-rsa-2.2.0
REVISION =	0
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
	perl -pi -e 's,source \./vars,. ./vars,g' \
	    ${PREFIX}/share/doc/easy-rsa/* ${PREFIX}/share/easy-rsa/*

.include <bsd.port.mk>
