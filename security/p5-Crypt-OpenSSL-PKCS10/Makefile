# $OpenBSD: Makefile,v 1.2 2015/07/16 23:57:26 ajacoutot Exp $

SHARED_ONLY =	Yes

COMMENT =	Perl extension to OpenSSL's PKCS10 API

MODULES =	cpan

DISTNAME =	Crypt-OpenSSL-PKCS10-0.14
CATEGORIES =	security
REVISION =	0

# Perl
PERMIT_PACKAGE_CDROM = Yes

WANTLIB +=	c crypto ssl

RUN_DEPENDS =	security/p5-Crypt-OpenSSL-RSA
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
