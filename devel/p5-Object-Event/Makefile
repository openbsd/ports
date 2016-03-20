# $OpenBSD: Makefile,v 1.3 2016/03/20 19:56:30 naddy Exp $

COMMENT =		event callback interface

DISTNAME =		Object-Event-1.23
REVISION =		0

CATEGORIES =		devel

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-AnyEvent \
			devel/p5-common-sense

.include <bsd.port.mk>
