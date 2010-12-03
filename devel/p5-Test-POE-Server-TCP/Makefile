# $OpenBSD: Makefile,v 1.3 2010/12/03 11:44:37 ajacoutot Exp $

COMMENT =	POE component providing TCP server services for test cases

MODULES =	cpan
DISTNAME =	Test-POE-Server-TCP-1.06
REVISION =	0
CATEGORIES =	devel
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
