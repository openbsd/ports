# $OpenBSD: Makefile,v 1.6 2016/09/03 12:21:36 giovanni Exp $

COMMENT =	elasticsearch perl module

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Search-Elasticsearch-2.03
REVISION =	0
CATEGORIES =	devel

MAINTAINER =	Giovanni Bechis <giovanni@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	converters/p5-JSON-MaybeXS \
		devel/p5-Log-Any>=1.02 \
		devel/p5-Moo \
		devel/p5-namespace-clean \
		www/p5-Any-URI-Escape \
		www/p5-URI \
		www/p5-Hijk

TEST_DEPENDS =	devel/p5-Log-Any \
		devel/p5-Log-Any-Adapter-Callback \
		devel/p5-Test-Deep \
		devel/p5-Test-Exception \
		devel/p5-Test-SharedFork \
		security/p5-IO-Socket-SSL

.include <bsd.port.mk>
