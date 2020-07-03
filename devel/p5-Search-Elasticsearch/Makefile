# $OpenBSD: Makefile,v 1.12 2020/07/03 21:45:08 sthen Exp $

COMMENT =	elasticsearch perl module

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Search-Elasticsearch-6.00
CATEGORIES =	devel
REVISION =	0

MAINTAINER =	Giovanni Bechis <giovanni@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	converters/p5-JSON-MaybeXS \
		devel/p5-Log-Any>=1.02 \
		devel/p5-Moo>=2.002003 \
		devel/p5-namespace-clean \
		www/p5-Any-URI-Escape \
		www/p5-URI \
		www/p5-Hijk

TEST_DEPENDS =	converters/p5-JSON-XS \
		devel/p5-Log-Any \
		devel/p5-Log-Any-Adapter-Callback \
		devel/p5-Moo>=2.002003 \
		devel/p5-Test-Deep \
		devel/p5-Test-Exception \
		devel/p5-Test-SharedFork \
		security/p5-IO-Socket-SSL

.include <bsd.port.mk>
