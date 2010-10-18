# $OpenBSD: Makefile,v 1.2 2010/10/18 17:48:08 espie Exp $

COMMENT =	POE component providing TCP server services for test cases

MODULES =	cpan
DISTNAME =	Test-POE-Server-TCP-1.06
CATEGORIES =	devel
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
