# $OpenBSD: Makefile,v 1.8 2015/11/05 19:09:00 jca Exp $

COMMENT =	configure your application with environment variables

MODULES =	cpan
DISTNAME =	Catalyst-Plugin-ConfigLoader-Environment-0.07
CATEGORIES =	www
REVISION =	0

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	converters/p5-JSON-Any \
		devel/p5-MRO-Compat \
		www/p5-Catalyst-Runtime

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
