# $OpenBSD: Makefile,v 1.12 2020/07/03 21:46:04 sthen Exp $

COMMENT =	session management for Mojo

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	MojoX-Session-0.33
CATEGORIES =	www
REVISION =	0

# Perl
PERMIT_PACKAGE =		Yes

CPAN_AUTHOR =	VTI

RUN_DEPENDS =	www/p5-Mojo

TEST_DEPENDS+=	databases/p5-DBD-SQLite \
		databases/p5-DBIx-Class-Schema-Loader

.include <bsd.port.mk>
