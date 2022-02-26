# $OpenBSD: Makefile,v 1.15 2022/02/26 09:40:57 sthen Exp $

COMMENT =		access OpenSSL X509 API from Perl

DISTNAME =		Crypt-OpenSSL-X509-1.913

CATEGORIES =		security

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c crypto perl ssl

MODULES =		cpan

MAKE_ENV =		TEST_POD=Yes

.include <bsd.port.mk>
