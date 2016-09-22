# $OpenBSD: Makefile,v 1.5 2016/09/22 12:57:18 fcambus Exp $

COMMENT =	aquarium animation in ASCII art

DISTNAME =	asciiquarium_1.1
PKGNAME = 	${DISTNAME:S/_/-/}
REVISION =	1

CATEGORIES =	games

HOMEPAGE =	http://www.robobunny.com/projects/asciiquarium/html/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM = Yes

MASTER_SITES =	http://www.robobunny.com/projects/asciiquarium/

RUN_DEPENDS =	misc/p5-Term-Animation

NO_BUILD =	Yes
NO_TEST =	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/asciiquarium ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/asciiquarium
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/asciiquarium

.include <bsd.port.mk>
