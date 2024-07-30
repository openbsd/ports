COMMENT =	modern GPS tracking platform
V =		6.3
PKGNAME =	traccar-${V}
DISTNAME =	traccar-other-${V}
EXTRACT_SUFX =	.zip

CATEGORIES =	geo
HOMEPAGE =	https://www.traccar.org/

MAINTAINER =	Renaud Allard <renaud@allard.it>

# MPL 2.0
PERMIT_PACKAGE =	Yes

SITES =		https://github.com/traccar/traccar/releases/download/v${V}/

MODULES =	java
MODJAVA_VER =	17+

RUN_DEPENDS =	java/javaPathHelper

EXTRACT_CASES +=	traccar*.zip) \
	${UNZIP} -oq ${FULLDISTDIR}/$$archive -d ${WRKDIST};;

NO_BUILD =	Yes
NO_TEST =	Yes

do-configure:
	${SUBST_CMD} ${WRKSRC}/conf/traccar.xml

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/traccar/
	cp -r ${WRKSRC}/* ${PREFIX}/share/traccar/
	rm ${PREFIX}/share/traccar/conf/traccar.xml.*

.include <bsd.port.mk>
