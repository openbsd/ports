# $OpenBSD: Makefile,v 1.7 2022/03/04 08:51:09 sthen Exp $

FIX_EXTRACT_PERMISSIONS = Yes

COMMENT =	parse and examine a perl distribution MANIFEST file

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
