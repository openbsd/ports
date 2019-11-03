# $OpenBSD: Makefile,v 1.12 2019/11/03 19:09:02 sthen Exp $

COMMENT =		access OpenSSL X509 API from Perl

DISTNAME =		Crypt-OpenSSL-X509-1.813

CATEGORIES =		security

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c crypto perl ssl

MODULES =		cpan

MAKE_ENV =		TEST_POD=Yes

.include <bsd.port.mk>
