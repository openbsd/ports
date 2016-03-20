# $OpenBSD: Makefile,v 1.10 2016/03/20 19:57:00 naddy Exp $

COMMENT =	object oriented interface to create salted hashes

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Crypt-SaltedHash-0.09
CATEGORIES =	security

CPAN_AUTHOR =	GSHANK

# Perl
PERMIT_PACKAGE_CDROM =	Yes

TEST_DEPENDS =	devel/p5-Test-Fatal
MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
