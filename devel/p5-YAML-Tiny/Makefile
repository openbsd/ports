# $OpenBSD: Makefile,v 1.10 2015/08/27 15:18:44 benoit Exp $

COMMENT =	read/write YAML files with as little code as possible

MODULES =	cpan
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
