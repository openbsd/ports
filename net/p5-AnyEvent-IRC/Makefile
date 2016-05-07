# $OpenBSD: Makefile,v 1.3 2016/05/07 12:40:58 pascal Exp $

COMMENT =		event based IRC client API

DISTNAME =		AnyEvent-IRC-0.97
REVISION =		0

CATEGORIES =		net devel

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-Object-Event \
			devel/p5-AnyEvent

.include <bsd.port.mk>
