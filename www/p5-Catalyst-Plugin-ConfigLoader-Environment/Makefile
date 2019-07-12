# $OpenBSD: Makefile,v 1.10 2019/07/12 20:50:51 sthen Exp $

COMMENT =	configure your application with environment variables

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Catalyst-Plugin-ConfigLoader-Environment-0.07
CATEGORIES =	www
REVISION =	0

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =	converters/p5-JSON-Any \
		devel/p5-MRO-Compat \
		www/p5-Catalyst-Runtime

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
