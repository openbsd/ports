# $OpenBSD: Makefile,v 1.19 2014/06/14 23:23:12 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	JSON serialising/deserialising, done correctly and fast

MODULES =	cpan
DISTNAME =	JSON-XS-2.33
EPOCH =		1
CATEGORIES =	converters
REVISION =	0

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

RUN_DEPENDS=	devel/p5-common-sense

.include <bsd.port.mk>
