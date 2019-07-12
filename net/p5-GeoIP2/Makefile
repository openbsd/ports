# $OpenBSD: Makefile,v 1.3 2019/07/12 20:48:36 sthen Exp $

COMMENT =	Perl API for MaxMind's GeoIP2 web services and databases

DISTNAME =	GeoIP2-2.006002

CATEGORIES =	net

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan

RUN_DEPENDS =	converters/p5-JSON-MaybeXS \
		devel/p5-Data-Validate-IP>=0.25 \
		devel/p5-Moo \
		devel/p5-Params-Validate \
		devel/p5-Sub-Quote \
		devel/p5-Throwable \
		devel/p5-Try-Tiny \
		devel/p5-namespace-clean \
		net/p5-MaxMind-DB-Reader>=1.0 \
		textproc/p5-List-SomeUtils \
		www/p5-HTTP-Message \
		www/p5-LWP-Protocol-https \
		www/p5-URI \
		www/p5-libwww

TEST_DEPENDS =	devel/p5-Path-Class \
		devel/p5-Test-Fatal \
		devel/p5-Test-Number-Delta \
		net/p5-MaxMind-DB-Common \
		www/p5-HTTP-Message

PKG_ARCH =	*

CPAN_AUTHOR =	MAXMIND

.include <bsd.port.mk>
