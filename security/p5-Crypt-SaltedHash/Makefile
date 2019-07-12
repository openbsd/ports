# $OpenBSD: Makefile,v 1.11 2019/07/12 20:49:07 sthen Exp $

COMMENT =	object oriented interface to create salted hashes

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Crypt-SaltedHash-0.09
CATEGORIES =	security

CPAN_AUTHOR =	GSHANK

# Perl
PERMIT_PACKAGE =	Yes

TEST_DEPENDS =	devel/p5-Test-Fatal
MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
