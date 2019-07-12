# $OpenBSD: Makefile,v 1.11 2019/07/12 20:49:07 sthen Exp $

COMMENT =		access OpenSSL X509 API from Perl

DISTNAME =		Crypt-OpenSSL-X509-1.812

CATEGORIES =		security

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c crypto perl ssl

MODULES =		cpan

MAKE_ENV =		TEST_POD=Yes

.include <bsd.port.mk>
