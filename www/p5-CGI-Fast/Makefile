# $OpenBSD: Makefile,v 1.4 2019/07/12 20:50:50 sthen Exp $

COMMENT =	CGI interface for FastCGI
DISTNAME =	CGI-Fast-2.15
CATEGORIES =	www

MAINTAINER =	Mikolaj Kucharski <mikolaj@kucharski.name>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*
RUN_DEPENDS =	www/fcgi \
		www/p5-CGI>=4.00

.include <bsd.port.mk>
