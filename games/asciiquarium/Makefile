COMMENT =	aquarium animation in ASCII art

DISTNAME =	asciiquarium_1.1
PKGNAME = 	${DISTNAME:S/_/-/}
REVISION =	3

CATEGORIES =	games

HOMEPAGE =	https://www.robobunny.com/projects/asciiquarium/html/

# GPLv2+
PERMIT_PACKAGE = Yes

MASTER_SITES =	https://www.robobunny.com/projects/asciiquarium/

RUN_DEPENDS =	misc/p5-Term-Animation

NO_BUILD =	Yes
NO_TEST =	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/asciiquarium ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/asciiquarium
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/asciiquarium

.include <bsd.port.mk>
