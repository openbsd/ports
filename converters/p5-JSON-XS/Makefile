# $OpenBSD: Makefile,v 1.30 2020/11/06 07:58:46 benoit Exp $

COMMENT =	JSON serialising/deserialising, done correctly and fast

DISTNAME =	JSON-XS-4.03
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
