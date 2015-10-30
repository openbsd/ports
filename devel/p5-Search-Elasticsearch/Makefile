# $OpenBSD: Makefile,v 1.1.1.1 2015/10/30 18:17:30 giovanni Exp $

COMMENT =	elasticsearch perl module

MODULES =	cpan
DISTNAME =	Search-Elasticsearch-1.99
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	converters/p5-JSON-MaybeXS \
		devel/p5-Log-Any>=1.02 \
		devel/p5-Moo \
		devel/p5-namespace-clean \
		www/p5-Any-URI-Escape \
		www/p5-Hijk

TEST_DEPENDS =	devel/p5-Test-Deep \
		security/p5-IO-Socket-SSL

.include <bsd.port.mk>
