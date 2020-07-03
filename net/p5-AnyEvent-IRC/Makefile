# $OpenBSD: Makefile,v 1.5 2020/07/03 21:45:31 sthen Exp $

COMMENT =		event based IRC client API

DISTNAME =		AnyEvent-IRC-0.97
REVISION =		1

CATEGORIES =		net devel

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-Object-Event \
			devel/p5-AnyEvent

.include <bsd.port.mk>
