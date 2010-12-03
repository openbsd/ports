# $OpenBSD: Makefile,v 1.5 2010/12/03 11:44:35 ajacoutot Exp $

SHARED_ONLY =	Yes
COMMENT =	act on upper scopes

MODULES =	cpan
DISTNAME =	Scope-Upper-0.12
REVISION =	1
CATEGORIES =	devel
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

CPAN_AUTHOR =	VPIT

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
