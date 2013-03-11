# $OpenBSD: Makefile,v 1.2 2013/03/11 11:44:46 espie Exp $

COMMENT =	run HTTP tests on external live servers

MODULES =	cpan
DISTNAME =	Plack-Test-ExternalServer-0.01
CATEGORIES =	www

# same as perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	www/p5-libwww \
		www/p5-Plack \
		net/p5-Test-TCP \
		www/p5-URI

.include <bsd.port.mk>
