# $OpenBSD: Makefile,v 1.5 2013/03/11 11:44:47 espie Exp $

COMMENT =		fetch and parse the directory index from a web server

DISTNAME =		WWW-IndexParser-0.91
REVISION =		0
CATEGORIES =		www

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		www/p5-libwww
BUILD_DEPENDS =		${RUN_DEPENDS}
USE_GROFF =		Yes

.include <bsd.port.mk>
