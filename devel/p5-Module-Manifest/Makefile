# $OpenBSD: Makefile,v 1.1.1.1 2012/01/18 16:50:57 okan Exp $

COMMENT = 	parse and examine a perl distribution MANIFEST file

MODULES =	cpan

DISTNAME =	Module-Manifest-1.08
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODCPAN_EXAMPLES = Yes

BUILD_DEPENDS =	devel/p5-Params-Util \
		devel/p5-Test-Warn \
		devel/p5-Test-Exception

RUN_DEPENDS =	devel/p5-Params-Util

.include <bsd.port.mk>
