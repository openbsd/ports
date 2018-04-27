# $OpenBSD: Makefile,v 1.26 2018/04/27 14:51:24 ajacoutot Exp $

COMMENT =	JSON serialising/deserialising, done correctly and fast

MODULES =	cpan
DISTNAME =	JSON-XS-3.04
EPOCH =		1
CATEGORIES =	converters

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c perl

BUILD_DEPENDS=	devel/p5-Canary-Stability
RUN_DEPENDS=	converters/p5-Types-Serialiser \
		devel/p5-common-sense

.include <bsd.port.mk>
