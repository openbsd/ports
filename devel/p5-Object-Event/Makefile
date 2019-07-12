# $OpenBSD: Makefile,v 1.5 2019/07/12 20:45:02 sthen Exp $

COMMENT =		event callback interface

DISTNAME =		Object-Event-1.23
REVISION =		1

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
