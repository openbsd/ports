# $OpenBSD: Makefile,v 1.7 2013/03/11 11:44:46 espie Exp $

COMMENT =	session management for Mojo

MODULES =	cpan
DISTNAME =	MojoX-Session-0.25
CATEGORIES =	www

# Perl
PERMIT_PACKAGE_CDROM =		Yes

CPAN_AUTHOR =	VTI

RUN_DEPENDS =	security/p5-Digest-SHA1 \
		www/p5-Mojo

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
