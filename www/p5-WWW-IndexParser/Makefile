# $OpenBSD: Makefile,v 1.2 2010/10/19 08:02:57 espie Exp $

COMMENT =		fetch and parse the directory index from a web server

DISTNAME =		WWW-IndexParser-0.91
CATEGORIES =		www

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		cpan
RUN_DEPENDS =		::www/p5-libwww
BUILD_DEPENDS =		${RUN_DEPENDS}
USE_GROFF =	Yes

.include <bsd.port.mk>
