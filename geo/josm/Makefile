# $OpenBSD: Makefile,v 1.24 2014/04/20 08:04:10 landry Exp $

COMMENT=		OpenStreetMap map editor

SVN_REV=		6950
DISTNAME=		josm-snapshot-${SVN_REV}
EXTRACT_SUFX =		.jar
EXTRACT_CASES+=		*.jar) unzip -qa ${FULLDISTDIR}/$$archive -d ${WRKDIST};;
PKGNAME=		josm-${SVN_REV}

PKG_ARCH=		*

CATEGORIES=		geo

HOMEPAGE=		http://josm.openstreetmap.de/
MASTER_SITES=		${HOMEPAGE}/download/

MAINTAINER=		Holger Mikolon <holger@mikolon.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		java \
			textproc/intltool
MODJAVA_VER=		1.6+
BUILD_DEPENDS =		archivers/unzip
RUN_DEPENDS=		java/javaPathHelper \
			devel/desktop-file-utils
NO_TEST=		Yes
NO_BUILD=		Yes

INSTALL_DIR =		josm

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/${INSTALL_DIR}
	${INSTALL_DATA} $(DISTDIR)/${DISTNAME}${EXTRACT_SUFX} ${PREFIX}/share/${INSTALL_DIR}/josm-latest.jar
	@${SUBST_CMD} -c ${FILESDIR}/josm.sh $(PREFIX)/bin/josm
	chown ${BINOWN}:${BINGRP} $(PREFIX)/bin/josm
	chmod +x $(PREFIX)/bin/josm
	${INSTALL_MAN} $(FILESDIR)/josm.1 ${PREFIX}/man/man1/josm.1
	${INSTALL_DATA} $(WRKDIST)/images/logo.png ${PREFIX}/share/${INSTALL_DIR}/osm_logo.png
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	@${SUBST_CMD} -c ${FILESDIR}/josm.desktop ${PREFIX}/share/applications/josm.desktop
	chown ${SHAREOWN}:${SHAREGRP} $(PREFIX)/share/applications/josm.desktop

.include <bsd.port.mk>
