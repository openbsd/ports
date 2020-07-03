# $OpenBSD: Makefile,v 1.6 2020/07/03 21:45:04 sthen Exp $

COMMENT =		event callback interface

DISTNAME =		Object-Event-1.23
REVISION =		2

CATEGORIES =		devel

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-AnyEvent \
			devel/p5-common-sense

.include <bsd.port.mk>
