# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:09 naddy Exp $

COMMENT =	DBI driver abstraction for rendering charts and graphs

DISTNAME =	DBD-Chart-0.82
REVISION =	0
CATEGORIES =	databases graphics
MODULES =	cpan
PKG_ARCH =	*

MAINTAINER =	Okan Demirmen <okan@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	graphics/p5-GD \
		graphics/p5-GD-TextUtil \
		databases/p5-DBI

.include <bsd.port.mk>
