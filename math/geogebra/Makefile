# $OpenBSD: Makefile,v 1.4 2013/12/20 07:58:09 ajacoutot Exp $

COMMENT=	educational mathematical software

V=		4.2.60.0
DISTNAME=	GeoGebra-Unixlike-Installer-${V}
PKGNAME=	geogebra-${V}

CATEGORIES=	math java

HOMEPAGE=	http://www.geogebra.org

# Apache Software License
# GPLv3, LGPLv3, BSD, Public Domain
# GeoGebra Non-Commercial License
# Creative Commons Attribution-Share Alike 3.0
# See: http://www.geogebra.org/download/license.txt
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILE_FTP=	Yes

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
