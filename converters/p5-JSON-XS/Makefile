# $OpenBSD: Makefile,v 1.18 2014/04/13 01:01:38 naddy Exp $

SHARED_ONLY =	Yes

COMMENT =	JSON serialising/deserialising, done correctly and fast

MODULES =	cpan
DISTNAME =	JSON-XS-2.33
EPOCH =		1
CATEGORIES =	converters

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

RUN_DEPENDS=	devel/p5-common-sense

.include <bsd.port.mk>
