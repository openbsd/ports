# $OpenBSD: Makefile,v 1.2 2016/03/20 19:56:28 naddy Exp $

COMMENT =	some Moosish types and a type builder

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	MooX-Types-MooseLike-0.27
CATEGORIES =	devel

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Module-Runtime

BUILD_DEPENDS =	devel/p5-Moo \
		devel/p5-Test-Fatal

.include <bsd.port.mk>
