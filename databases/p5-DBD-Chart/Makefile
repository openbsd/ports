# $OpenBSD: Makefile,v 1.1.1.1 2008/06/09 18:31:25 okan Exp $

COMMENT =	DBI driver abstraction for rendering charts and graphs

DISTNAME =	DBD-Chart-0.82
CATEGORIES =	databases graphics
MODULES =	cpan

MAINTAINER =	Okan Demirmen <okan@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

BUILD_DEPENDS =	::graphics/p5-GD \
		::graphics/p5-GD-TextUtil \
		::databases/p5-DBI
RUN_DEPENDS =	${BUILD_DEPENDS}

.include <bsd.port.mk>
