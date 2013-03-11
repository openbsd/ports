# $OpenBSD: Makefile,v 1.2 2013/03/11 10:50:19 espie Exp $

COMMENT = 	parse and examine a perl distribution MANIFEST file

MODULES =	cpan

DISTNAME =	Module-Manifest-1.08
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

MODCPAN_EXAMPLES = Yes

BUILD_DEPENDS =	devel/p5-Params-Util \
		devel/p5-Test-Warn \
		devel/p5-Test-Exception

RUN_DEPENDS =	devel/p5-Params-Util

.include <bsd.port.mk>
