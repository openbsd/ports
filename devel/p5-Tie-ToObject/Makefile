# $OpenBSD: Makefile,v 1.6 2010/12/03 11:44:37 ajacoutot Exp $

COMMENT =	tie to an existing object

MODULES =	cpan
DISTNAME =	Tie-ToObject-0.03
REVISION =	1
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
