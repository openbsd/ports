# $OpenBSD: Makefile,v 1.2 2020/07/03 21:45:38 sthen Exp $

COMMENT =	Twitter REST API library for Perl
DISTNAME =	Twitter-API-1.0005
CATEGORIES =	net
PKG_ARCH =	*
REVISION =	0

MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes
MODULES =		cpan

RUN_DEPENDS =	converters/p5-JSON-MaybeXS \
		devel/p5-Module-Runtime \
		devel/p5-Moo \
		devel/p5-MooX-Aliases \
		devel/p5-MooX-Traits \
		devel/p5-Ref-Util \
		devel/p5-Sub-Exporter-Progressive \
		devel/p5-Throwable \
		devel/p5-Try-Tiny \
		devel/p5-namespace-clean \
		security/p5-IO-Socket-SSL \
		www/p5-HTML-Parser \
		www/p5-HTTP-Message \
		www/p5-HTTP-Thin \
		www/p5-URI \
		www/p5-URL-Encode \
		www/p5-WWW-OAuth>=0.006
TEST_DEPENDS =	devel/p5-Test-Fatal \
		devel/p5-Test-Pod \
		devel/p5-Test-Spec \
		devel/p5-Test-Warnings \
		www/p5-HTTP-Message

CONFIGURE_STYLE =	modbuild tiny

.include <bsd.port.mk>
