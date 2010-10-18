# $OpenBSD: Makefile,v 1.3 2010/10/18 17:06:07 espie Exp $

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
RUN_DEPENDS =	::graphics/p5-GD \
		::graphics/p5-GD-TextUtil \
		::databases/p5-DBI

.include <bsd.port.mk>
