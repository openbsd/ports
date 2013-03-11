# $OpenBSD: Makefile,v 1.7 2013/03/11 10:50:23 espie Exp $

COMMENT =	tie to an existing object

MODULES =	cpan
DISTNAME =	Tie-ToObject-0.03
REVISION =	1
CATEGORIES =	devel
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/p5-Test-use-ok

.include <bsd.port.mk>
