# $OpenBSD: Makefile,v 1.5 2018/10/16 13:59:46 sthen Exp $

COMMENT =	Perl extension to OpenSSL's PKCS10 API

MODULES =	cpan

DISTNAME =	Crypt-OpenSSL-PKCS10-0.16
CATEGORIES =	security

# Perl
PERMIT_PACKAGE_CDROM = Yes

WANTLIB +=	c crypto perl ssl

RUN_DEPENDS =	security/p5-Crypt-OpenSSL-RSA
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
