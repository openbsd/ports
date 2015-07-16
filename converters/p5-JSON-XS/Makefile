# $OpenBSD: Makefile,v 1.21 2015/07/16 23:57:19 ajacoutot Exp $

SHARED_ONLY =	Yes

COMMENT =	JSON serialising/deserialising, done correctly and fast

MODULES =	cpan
DISTNAME =	JSON-XS-3.01
EPOCH =		1
CATEGORIES =	converters
REVISION =	0

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

RUN_DEPENDS=	converters/p5-Types-Serialiser \
		devel/p5-common-sense

.include <bsd.port.mk>
