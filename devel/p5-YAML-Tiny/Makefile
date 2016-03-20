# $OpenBSD: Makefile,v 1.11 2016/03/20 19:56:41 naddy Exp $

COMMENT =	read/write YAML files with as little code as possible

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	YAML-Tiny-1.69
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

TEST_DEPENDS =	devel/p5-YAML \
			devel/p5-YAML-Perl \
			devel/p5-YAML-Syck \
			devel/p5-YAML-XS

MAKE_ENV +=		AUTOMATED_TESTING=1

.include <bsd.port.mk>
