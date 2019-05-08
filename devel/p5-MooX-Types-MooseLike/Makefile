# $OpenBSD: Makefile,v 1.3 2019/05/08 21:36:07 danj Exp $

COMMENT =	some Moosish types and a type builder

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	MooX-Types-MooseLike-0.27
CATEGORIES =	devel
REVISION =	0

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Module-Runtime

BUILD_DEPENDS =	devel/p5-Moo \
		devel/p5-Test-Fatal

.include <bsd.port.mk>
