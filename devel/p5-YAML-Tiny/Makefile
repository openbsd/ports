# $OpenBSD: Makefile,v 1.13 2017/12/04 17:56:27 espie Exp $

COMMENT =	read/write YAML files with as little code as possible

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	YAML-Tiny-1.70
CATEGORIES =	devel
FIX_EXTRACT_PERMISSIONS=	Yes

# Perl
PERMIT_PACKAGE_CDROM =		Yes

TEST_DEPENDS =	devel/p5-YAML \
			devel/p5-YAML-Perl \
			devel/p5-YAML-Syck \
			devel/p5-YAML-XS

MAKE_ENV +=		AUTOMATED_TESTING=1

.include <bsd.port.mk>
