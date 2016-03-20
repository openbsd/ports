# $OpenBSD: Makefile,v 1.9 2016/03/20 19:57:15 naddy Exp $

COMMENT =	configure your application with environment variables

MODULES =	cpan
PKG_ARCH =	*
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
