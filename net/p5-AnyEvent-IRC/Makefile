# $OpenBSD: Makefile,v 1.4 2019/07/12 20:48:35 sthen Exp $

COMMENT =		event based IRC client API

DISTNAME =		AnyEvent-IRC-0.97
REVISION =		0

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
