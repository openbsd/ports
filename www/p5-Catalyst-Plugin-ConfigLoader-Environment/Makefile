# $OpenBSD: Makefile,v 1.11 2020/07/03 21:45:57 sthen Exp $

COMMENT =	configure your application with environment variables

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Catalyst-Plugin-ConfigLoader-Environment-0.07
CATEGORIES =	www
REVISION =	1

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =	converters/p5-JSON-Any \
		devel/p5-MRO-Compat \
		www/p5-Catalyst-Runtime

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
