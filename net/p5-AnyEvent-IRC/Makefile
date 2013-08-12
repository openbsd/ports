# $OpenBSD: Makefile,v 1.1.1.1 2013/08/12 11:59:11 pascal Exp $

COMMENT =		event based IRC client API

DISTNAME =		AnyEvent-IRC-0.97

CATEGORIES =		net devel

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-Object-Event \
			devel/p5-AnyEvent

.include <bsd.port.mk>
