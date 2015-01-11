# $OpenBSD: Makefile,v 1.1.1.1 2015/01/11 08:10:30 benoit Exp $

COMMENT =		recursively merge two or more hashes, simply

MODULES =		cpan
DISTNAME =		Hash-Merge-Simple-0.051
CATEGORIES =		devel

MAINTAINER =		Cesare Gargano <gar@plusiagamma.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =		devel/p5-Test-Most

RUN_DEPENDS =		devel/p5-Clone

TEST_DEPENDS =		devel/p5-Test-Deep \
			devel/p5-Test-Most

.include <bsd.port.mk>
