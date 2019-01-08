# $OpenBSD: Makefile,v 1.10 2019/01/08 16:27:08 bluhm Exp $

COMMENT =		access OpenSSL X509 API from Perl

DISTNAME =		Crypt-OpenSSL-X509-1.812

CATEGORIES =		security

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c crypto perl ssl

MODULES =		cpan

MAKE_ENV =		TEST_POD=Yes

.include <bsd.port.mk>
