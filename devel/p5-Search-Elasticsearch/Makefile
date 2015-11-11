# $OpenBSD: Makefile,v 1.3 2015/11/11 19:43:20 jasper Exp $

COMMENT =	elasticsearch perl module

MODULES =	cpan
DISTNAME =	Search-Elasticsearch-2.00
REVISION =	0
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	converters/p5-JSON-MaybeXS \
		devel/p5-Log-Any>=1.02 \
		devel/p5-Moo \
		devel/p5-namespace-clean \
		www/p5-Any-URI-Escape \
		www/p5-URI \
		www/p5-Hijk

TEST_DEPENDS =	devel/p5-Test-Deep \
		security/p5-IO-Socket-SSL

.include <bsd.port.mk>
