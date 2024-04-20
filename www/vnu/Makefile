COMMENT =	HTML5 validator

V =		23.4.11
DISTNAME =	vnu-jar-$V
PKGNAME =	vnu-$V

CATEGORIES =	www

HOMEPAGE =	https://validator.github.io/validator/

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# MIT
PERMIT_PACKAGE =	Yes

SITES =		https://registry.npmjs.org/vnu-jar/-/

EXTRACT_SUFX =		.tgz

MODULES =		java
MODJAVA_VER =		1.8+
RUN_DEPENDS =		java/javaPathHelper

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/package

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/vnu
	${INSTALL_DATA} ${WRKSRC}/build/dist/vnu.jar ${PREFIX}/share/vnu
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vnu
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/vnu
	${SUBST_CMD} -m 555 -c ${FILESDIR}/vnu ${WRKSRC}/vnu
	${INSTALL_SCRIPT} ${WRKSRC}/vnu ${PREFIX}/bin

.include <bsd.port.mk>
