# $OpenBSD: Makefile,v 1.16 2020/07/03 21:45:20 sthen Exp $

COMMENT =	read/write YAML files with as little code as possible

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	YAML-Tiny-1.73
CATEGORIES =	devel
FIX_EXTRACT_PERMISSIONS=	Yes
REVISION =	0

# Perl
PERMIT_PACKAGE =		Yes

TEST_DEPENDS =		converters/p5-JSON-MaybeXS \
			devel/p5-YAML \
			devel/p5-YAML-Syck \
			devel/p5-YAML-XS

MAKE_ENV +=		AUTOMATED_TESTING=1

.include <bsd.port.mk>
