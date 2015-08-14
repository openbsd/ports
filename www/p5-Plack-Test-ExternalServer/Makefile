# $OpenBSD: Makefile,v 1.3 2015/08/14 15:58:21 benoit Exp $

COMMENT =	run HTTP tests on external live servers

MODULES =	cpan
DISTNAME =	Plack-Test-ExternalServer-0.02
CATEGORIES =	www

# same as perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	www/p5-libwww \
		www/p5-Plack \
		net/p5-Test-TCP \
		www/p5-URI

.include <bsd.port.mk>
