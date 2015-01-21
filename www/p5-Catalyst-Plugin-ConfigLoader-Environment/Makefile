# $OpenBSD: Makefile,v 1.7 2015/01/21 14:42:33 sthen Exp $

COMMENT =	configure your application with environment variables

MODULES =	cpan
DISTNAME =	Catalyst-Plugin-ConfigLoader-Environment-0.07
CATEGORIES =	www

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	converters/p5-JSON-Any \
		devel/p5-MRO-Compat \
		www/p5-Catalyst-Runtime

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
