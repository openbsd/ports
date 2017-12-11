# $OpenBSD: Makefile,v 1.2 2017/12/11 12:42:19 bluhm Exp $

COMMENT =	CGI interface for FastCGI
DISTNAME =	CGI-Fast-2.13
CATEGORIES =	www

MAINTAINER =	Mikolaj Kucharski <mikolaj@kucharski.name>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
PKG_ARCH =	*
RUN_DEPENDS =	www/fcgi \
		www/p5-CGI>=4.00

.include <bsd.port.mk>
