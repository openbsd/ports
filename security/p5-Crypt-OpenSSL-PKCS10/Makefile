# $OpenBSD: Makefile,v 1.3 2015/08/14 14:30:05 benoit Exp $

SHARED_ONLY =	Yes

COMMENT =	Perl extension to OpenSSL's PKCS10 API

MODULES =	cpan

DISTNAME =	Crypt-OpenSSL-PKCS10-0.15
CATEGORIES =	security

# Perl
PERMIT_PACKAGE_CDROM = Yes

WANTLIB +=	c crypto ssl

RUN_DEPENDS =	security/p5-Crypt-OpenSSL-RSA
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
