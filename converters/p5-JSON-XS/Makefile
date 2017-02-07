# $OpenBSD: Makefile,v 1.25 2017/02/07 14:26:13 sthen Exp $

COMMENT =	JSON serialising/deserialising, done correctly and fast

MODULES =	cpan
DISTNAME =	JSON-XS-3.03
EPOCH =		1
CATEGORIES =	converters

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c perl

BUILD_DEPENDS=	devel/p5-Canary-Stability
RUN_DEPENDS=	converters/p5-Types-Serialiser \
		devel/p5-common-sense

.include <bsd.port.mk>
