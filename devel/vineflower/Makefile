COMMENT =	Java decompiler

V =		1.11.2
DISTNAME =	vineflower-$V

CATEGORIES =	devel

HOMEPAGE =	https://vineflower.org/

# Apache 2.0
PERMIT_PACKAGE =	Yes

SITES =		https://github.com/Vineflower/vineflower/releases/download/$V/

EXTRACT_SUFX =	.jar
EXTRACT_ONLY =

MODULES =	java
MODJAVA_VER =	17+
RUN_DEPENDS =	java/javaPathHelper

NO_BUILD =	Yes
NO_TEST =	Yes

PKG_ARCH =	*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/vineflower
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTNAME}.jar \
		${PREFIX}/share/vineflower/vineflower.jar
	${SUBST_CMD} -m 555 -c ${FILESDIR}/vineflower ${WRKBUILD}/vineflower
	${INSTALL_SCRIPT} ${WRKBUILD}/vineflower ${PREFIX}/bin

.include <bsd.port.mk>
