# $OpenBSD: Makefile,v 1.13 2020/07/03 21:45:41 sthen Exp $

COMMENT =		access OpenSSL X509 API from Perl

DISTNAME =		Crypt-OpenSSL-X509-1.813
REVISION =		0

CATEGORIES =		security

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c crypto perl ssl

MODULES =		cpan

MAKE_ENV =		TEST_POD=Yes

.include <bsd.port.mk>
