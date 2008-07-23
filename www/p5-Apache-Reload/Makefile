# $OpenBSD: Makefile,v 1.1.1.1 2008/07/23 18:39:19 sthen Exp $

COMMENT =	Reload changed modules for mod_perl

DISTNAME =	Apache-Reload-0.10
CATEGORIES =	www perl5

MODULES =	cpan

BUILD_DEPENDS =	::www/mod_perl
RUN_DEPENDS =	${BUILD_DEPENDS}

# Apache License 2.0
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

# Tests are patched out to avoid network access in "make configure",
# and need manual configuration anyway.
NO_REGRESS =		Yes

.include <bsd.port.mk>
