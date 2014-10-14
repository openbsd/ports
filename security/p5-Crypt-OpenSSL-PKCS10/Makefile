# $OpenBSD: Makefile,v 1.1.1.1 2014/10/14 11:29:07 henning Exp $

SHARED_ONLY =	Yes

COMMENT =	Perl extension to OpenSSL's PKCS10 API

MODULES =	cpan

DISTNAME =	Crypt-OpenSSL-PKCS10-0.14
CATEGORIES =	security

# Perl
PERMIT_PACKAGE_CDROM = Yes

WANTLIB +=	c crypto ssl

RUN_DEPENDS =	security/p5-Crypt-OpenSSL-RSA
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
