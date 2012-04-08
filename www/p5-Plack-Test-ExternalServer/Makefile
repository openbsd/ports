# $OpenBSD: Makefile,v 1.1.1.1 2012/04/08 21:07:11 sthen Exp $

COMMENT =	run HTTP tests on external live servers

MODULES =	cpan
DISTNAME =	Plack-Test-ExternalServer-0.01
CATEGORIES =	www

# same as perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =	www/p5-libwww \
		www/p5-Plack \
		net/p5-Test-TCP \
		www/p5-URI

.include <bsd.port.mk>
