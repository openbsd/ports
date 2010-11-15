# $OpenBSD: Makefile,v 1.5 2010/11/15 19:46:06 espie Exp $

COMMENT =	tie to an existing object

MODULES =	cpan
DISTNAME =	Tie-ToObject-0.03
REVISION =	0
CATEGORIES =	devel
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/p5-Test-use-ok

.include <bsd.port.mk>
