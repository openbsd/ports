# $OpenBSD: Makefile,v 1.10 2016/03/20 19:56:12 naddy Exp $

COMMENT =	use Moose or Mouse modules

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Any-Moose-0.18
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-Mouse>=0.40

TEST_DEPENDS =	devel/p5-Class-Load \
		devel/p5-Devel-GlobalDestruction \
		devel/p5-Module-Runtime \
		devel/p5-Moose \
		devel/p5-MooseX-Types \
		devel/p5-MouseX-Types \
		devel/p5-MRO-Compat

.include <bsd.port.mk>
