# $OpenBSD: Makefile,v 1.1.1.1 2015/08/15 09:00:07 stsp Exp $

COMMENT =	an aquarium/sea animation in ASCII art

V =		1.1
DISTNAME =	asciiquarium_${V}
PKGNAME = 	asciiquarium-${V}

CATEGORIES =	games

HOMEPAGE =	http://www.robobunny.com/projects/asciiquarium/html/

MAINTAINER =	Frederic Cambus <fcambus@users.sourceforge.net>

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
