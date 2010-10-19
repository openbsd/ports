# $OpenBSD: Makefile,v 1.3 2010/10/19 08:02:54 espie Exp $

COMMENT =	Reload changed modules for mod_perl

DISTNAME =	Apache-Reload-0.10
CATEGORIES =	www perl5

MODULES =	cpan
USE_GROFF =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	::www/mod_perl

# Apache License 2.0
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

# Tests are patched out to avoid network access in "make configure",
# and need manual configuration anyway.
NO_REGRESS =		Yes

.include <bsd.port.mk>
