# $OpenBSD: Makefile,v 1.9 2014/12/18 09:03:30 benoit Exp $

COMMENT =	object oriented interface to create salted hashes

MODULES =	cpan
DISTNAME =	Crypt-SaltedHash-0.09
CATEGORIES =	security

CPAN_AUTHOR =	GSHANK

# Perl
PERMIT_PACKAGE_CDROM =	Yes

TEST_DEPENDS =	devel/p5-Test-Fatal
MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
