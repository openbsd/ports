COMMENT=	educational mathematical software

V=		5-2-909-9
DISTNAME=	GeoGebra-Linux-Portable-${V}
PKGNAME=	geogebra-${V:S/-/./g}

CATEGORIES=	math

HOMEPAGE=	https://www.geogebra.org

# GeoGebra Non-Commercial License + EUPL v1.2
# Creative Commons Attribution-Share Alike 4.0
# See: https://www.geogebra.org/license
PERMIT_PACKAGE=	Yes

SITES=			http://download.geogebra.org/installers/5.2/
EXTRACT_SUFX=		.tar.bz2

MODULES=		java
MODJAVA_VER=		17+

RUN_DEPENDS=		java/javaPathHelper

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

do-install:
	${INSTALL_DATA_DIR} ${MODJAVA_JAR_DIR}/geogebra
	cd ${WRKSRC}/geogebra && \
		${INSTALL_DATA} *.jar *.txt ${MODJAVA_JAR_DIR}/geogebra/
	rm ${MODJAVA_JAR_DIR}/geogebra/*-natives-linux-*.jar
	$(SUBST_PROGRAM) ${WRKSRC}/geogebra/geogebra $(PREFIX)/bin/geogebra

.include <bsd.port.mk>
