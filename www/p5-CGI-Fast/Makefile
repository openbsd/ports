# $OpenBSD: Makefile,v 1.1.1.1 2017/03/12 23:55:26 bluhm Exp $

COMMENT =	CGI interface for FastCGI
DISTNAME =	CGI-Fast-2.12
CATEGORIES =	www

MAINTAINER =	Mikolaj Kucharski <mikolaj@kucharski.name>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
PKG_ARCH =	*
RUN_DEPENDS =	www/fcgi \
		www/p5-CGI>=4.00

TEST_DEPENDS =	devel/p5-Test-Deep>=0.11

.include <bsd.port.mk>
