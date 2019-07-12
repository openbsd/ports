# $OpenBSD: Makefile,v 1.48 2019/07/12 20:46:29 sthen Exp $

COMMENT=		OpenStreetMap map editor

SVN_REV=		14824
DISTNAME=		josm-snapshot-${SVN_REV}
EXTRACT_SUFX =		.jar
EXTRACT_CASES+=		*.jar) unzip -qa ${FULLDISTDIR}/$$archive -d ${WRKDIST};;
PKGNAME=		josm-${SVN_REV}
REVISION=		0

PKG_ARCH=		*

CATEGORIES=		geo

HOMEPAGE=		http://josm.openstreetmap.de/
MASTER_SITES=		${HOMEPAGE}/download/

MAINTAINER=		Holger Mikolon <holger@mikolon.com>

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=		java \
			textproc/intltool
MODJAVA_VER=		1.8+
BUILD_DEPENDS =		archivers/unzip
RUN_DEPENDS=		java/javaPathHelper \
			devel/desktop-file-utils
NO_TEST=		Yes
NO_BUILD=		Yes

INSTALL_DIR =		josm

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/${INSTALL_DIR}
	${INSTALL_DATA} $(DISTDIR)/${DISTNAME}${EXTRACT_SUFX} ${PREFIX}/share/${INSTALL_DIR}/josm-latest.jar
	@${SUBST_CMD} -m 0755 -c ${FILESDIR}/josm.sh $(PREFIX)/bin/josm
	chown ${BINOWN}:${BINGRP} $(PREFIX)/bin/josm
	chmod +x $(PREFIX)/bin/josm
	${INSTALL_MAN} $(FILESDIR)/josm.1 ${PREFIX}/man/man1/josm.1
	${INSTALL_DATA} $(WRKDIST)/images/logo.svg ${PREFIX}/share/${INSTALL_DIR}/osm_logo.svg
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	@${SUBST_CMD} -m 0644 -c ${FILESDIR}/josm.desktop ${PREFIX}/share/applications/josm.desktop
	chown ${SHAREOWN}:${SHAREGRP} $(PREFIX)/share/applications/josm.desktop

.include <bsd.port.mk>
