# $OpenBSD: Makefile,v 1.9 2015/04/27 19:29:47 afresh1 Exp $

COMMENT =	session management for Mojo

MODULES =	cpan
DISTNAME =	MojoX-Session-0.33
CATEGORIES =	www

# Perl
PERMIT_PACKAGE_CDROM =		Yes

CPAN_AUTHOR =	VTI

RUN_DEPENDS =	www/p5-Mojo

TEST_DEPENDS+=	databases/p5-DBD-SQLite \
		databases/p5-DBIx-Class-Schema-Loader

.include <bsd.port.mk>
