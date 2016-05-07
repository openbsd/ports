# $OpenBSD: Makefile,v 1.4 2016/05/07 12:40:56 pascal Exp $

COMMENT =		event callback interface

DISTNAME =		Object-Event-1.23
REVISION =		1

CATEGORIES =		devel

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-AnyEvent \
			devel/p5-common-sense

.include <bsd.port.mk>
