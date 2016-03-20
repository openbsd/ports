# $OpenBSD: Makefile,v 1.4 2016/03/20 19:57:00 naddy Exp $

COMMENT =	Perl extension to OpenSSL's PKCS10 API

MODULES =	cpan

DISTNAME =	Crypt-OpenSSL-PKCS10-0.15
CATEGORIES =	security

# Perl
PERMIT_PACKAGE_CDROM = Yes

WANTLIB +=	c crypto perl ssl

RUN_DEPENDS =	security/p5-Crypt-OpenSSL-RSA
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
