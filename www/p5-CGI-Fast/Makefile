# $OpenBSD: Makefile,v 1.5 2020/07/03 21:45:55 sthen Exp $

COMMENT =	CGI interface for FastCGI
DISTNAME =	CGI-Fast-2.15
CATEGORIES =	www
REVISION =	0

MAINTAINER =	Mikolaj Kucharski <mikolaj@kucharski.name>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*
RUN_DEPENDS =	www/fcgi \
		www/p5-CGI>=4.00

.include <bsd.port.mk>
