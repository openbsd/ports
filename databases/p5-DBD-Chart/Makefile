# $OpenBSD: Makefile,v 1.4 2010/11/15 00:22:52 espie Exp $

COMMENT =	DBI driver abstraction for rendering charts and graphs

DISTNAME =	DBD-Chart-0.82
CATEGORIES =	databases graphics
MODULES =	cpan
USE_GROFF =	Yes

MAINTAINER =	Okan Demirmen <okan@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	graphics/p5-GD \
		graphics/p5-GD-TextUtil \
		databases/p5-DBI

.include <bsd.port.mk>
