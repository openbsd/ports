# $OpenBSD: Makefile,v 1.3 2013/08/07 21:32:10 naddy Exp $

COMMENT=	educational mathematical software

V=		4.0.38.0
DISTNAME=	GeoGebra-Unixlike-Installer-${V}
PKGNAME=	geogebra-${V}

CATEGORIES=	math java

HOMEPAGE=	http://www.geogebra.org

# GeoGebra Source: GPLv3
# Language Files and Documentation:
#   Creative Commons Attribution-Share Alike 3.0
# See: http://www.geogebra.org/download/license.txt
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://geogebra.googlecode.com/files/

MODULES=		java
MODJAVA_VER=		1.7+
MODJAVA_JRERUN=		Yes

RUN_DEPENDS=		java/javaPathHelper \
			devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+2,-guic

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*
WRKDIST=		${WRKDIR}/geogebra-${V}

pre-configure:
	perl -pi -e 's,/usr,${WRKINST}${TRUEPREFIX},g' ${WRKSRC}/install.sh
	perl -pi -e 's,/usr,${TRUEPREFIX},g' ${WRKSRC}/geogebra.desktop
	${SUBST_CMD} ${WRKSRC}/geogebra

do-install:
	mkdir -p ${PREFIX}/share/mime/packages
	mkdir -p ${PREFIX}/share/applications
	cd ${WRKBUILD} && ./install.sh
	gzip -d ${PREFIX}/share/icons/hicolor/scalable/apps/geogebra.svgz \
		 -o ${PREFIX}/share/icons/hicolor/scalable/apps/geogebra.svg
	gzip -d ${PREFIX}/share/icons/hicolor/scalable/mimetypes/application-vnd.geogebra.file.svgz \
		-o ${PREFIX}/share/icons/hicolor/scalable/mimetypes/application-vnd.geogebra.file.svg
	gzip -d ${PREFIX}/share/icons/hicolor/scalable/mimetypes/application-vnd.geogebra.tool.svgz \
		-o ${PREFIX}/share/icons/hicolor/scalable/mimetypes/application-vnd.geogebra.tool.svg

.include <bsd.port.mk>
