# $OpenBSD: Makefile,v 1.2 2009/08/02 21:02:44 ajacoutot Exp $

COMMENT=		OpenStreetMap map editor

SVN_REV=		1788
DISTNAME=		josm-1.5.${SVN_REV}
PKGNAME=		${DISTNAME}p0
PKG_ARCH=		*

CATEGORIES=		geo

HOMEPAGE=		http://josm.openstreetmap.de/
MASTER_SITES=		http://www.darwinsys.com/mirror/josm/

MAINTAINER=		Ian Darwin <ian@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		java \
			textproc/intltool
MODJAVA_VER=		1.6+

RUN_DEPENDS=		::java/javaPathHelper \
			::devel/desktop-file-utils
NO_REGRESS=		Yes

do-build:
	@cd ${WRKDIST} && exec ${SETENV} ${MAKE_ENV} ant -q \
	-Dant.build.javac.source="1.5" -Dant.build.javac.target="1.5" dist

INSTALL_DIR =		josm

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/${INSTALL_DIR}
	${INSTALL_DATA} $(WRKDIST)/dist/josm-custom.jar ${PREFIX}/share/${INSTALL_DIR}/josm-latest.jar
	@${SUBST_CMD} -c files/josm.sh $(PREFIX)/bin/josm
	chown ${BINOWN}:${BINGRP} $(PREFIX)/bin/josm
	chmod +x $(PREFIX)/bin/josm
	nroff -man $(FILESDIR)/josm.1 > $(PREFIX)/man/cat1/josm.0
	${INSTALL_DATA} $(WRKDIST)/images/logo.png ${PREFIX}/share/${INSTALL_DIR}/osm_logo.png
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	@${SUBST_CMD} -c ${FILESDIR}/josm.desktop ${PREFIX}/share/applications/josm.desktop
	chown ${SHAREOWN}:${SHAREGRP} $(PREFIX)/share/applications/josm.desktop

.include <bsd.port.mk>
