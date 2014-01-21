# $OpenBSD: Makefile,v 1.8 2014/01/21 20:50:36 landry Exp $

COMMENT =	session management for Mojo

MODULES =	cpan
DISTNAME =	MojoX-Session-0.31
CATEGORIES =	www

# Perl
PERMIT_PACKAGE_CDROM =		Yes

CPAN_AUTHOR =	VTI

RUN_DEPENDS =	www/p5-Mojo

TEST_DEPENDS+=	databases/p5-DBD-SQLite \
		databases/p5-DBIx-Class-Schema-Loader

.include <bsd.port.mk>
