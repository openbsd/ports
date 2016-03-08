# $OpenBSD: Makefile,v 1.22 2016/03/08 14:20:18 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	JSON serialising/deserialising, done correctly and fast

MODULES =	cpan
DISTNAME =	JSON-XS-3.02
EPOCH =		1
CATEGORIES =	converters

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

RUN_DEPENDS=	converters/p5-Types-Serialiser \
		devel/p5-common-sense

.include <bsd.port.mk>
