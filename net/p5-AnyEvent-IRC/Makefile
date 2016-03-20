# $OpenBSD: Makefile,v 1.2 2016/03/20 19:56:50 naddy Exp $

COMMENT =		event based IRC client API

DISTNAME =		AnyEvent-IRC-0.97

CATEGORIES =		net devel

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-Object-Event \
			devel/p5-AnyEvent

.include <bsd.port.mk>
