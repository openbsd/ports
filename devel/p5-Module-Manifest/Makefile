# $OpenBSD: Makefile,v 1.5 2019/07/12 20:45:00 sthen Exp $

COMMENT = 	parse and examine a perl distribution MANIFEST file

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	Module-Manifest-1.09
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =		Yes

MODCPAN_EXAMPLES = Yes

BUILD_DEPENDS =	devel/p5-Params-Util \
		devel/p5-Test-Warn \
		devel/p5-Test-Exception

RUN_DEPENDS =	devel/p5-Params-Util

.include <bsd.port.mk>
