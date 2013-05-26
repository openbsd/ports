# $OpenBSD: Makefile,v 1.9 2013/05/26 15:29:21 sthen Exp $

COMMENT =	read/write YAML files with as little code as possible

MODULES =	cpan
DISTNAME =	YAML-Tiny-1.51
CATEGORIES =	devel
CPAN_AUTHOR =	ADAMK

# Perl
PERMIT_PACKAGE_CDROM =		Yes

TEST_DEPENDS =	devel/p5-YAML \
			devel/p5-YAML-Perl \
			devel/p5-YAML-Syck \
			devel/p5-YAML-XS

MAKE_ENV +=		AUTOMATED_TESTING=1

.include <bsd.port.mk>
