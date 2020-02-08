# $OpenBSD: Makefile,v 1.28 2020/02/08 21:46:08 cwen Exp $

COMMENT =	JSON serialising/deserialising, done correctly and fast

DISTNAME =	JSON-XS-4.02
EPOCH =		1
CATEGORIES =	converters

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB +=	c perl

MODULES =	cpan

BUILD_DEPENDS =	devel/p5-Canary-Stability
RUN_DEPENDS =	converters/p5-Types-Serialiser \
		devel/p5-common-sense

.include <bsd.port.mk>
