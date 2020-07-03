# $OpenBSD: Makefile,v 1.6 2020/07/03 21:45:00 sthen Exp $

COMMENT = 	parse and examine a perl distribution MANIFEST file

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	Module-Manifest-1.09
CATEGORIES =	devel
REVISION =	0

# Perl
PERMIT_PACKAGE =		Yes

MODCPAN_EXAMPLES = Yes

BUILD_DEPENDS =	devel/p5-Params-Util \
		devel/p5-Test-Warn \
		devel/p5-Test-Exception

RUN_DEPENDS =	devel/p5-Params-Util

.include <bsd.port.mk>
