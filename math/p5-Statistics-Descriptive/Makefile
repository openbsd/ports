# $OpenBSD: Makefile,v 1.6 2011/09/05 12:06:41 jasper Exp $

COMMENT =		basic descriptive statistical functions

DISTNAME =		Statistics-Descriptive-3.0202
CATEGORIES =		math

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		cpan

CONFIGURE_STYLE =	modbuild
MODCPAN_EXAMPLES =	Yes
MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>
