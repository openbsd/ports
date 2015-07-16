# $OpenBSD: Makefile,v 1.6 2015/07/16 00:12:02 ajacoutot Exp $

COMMENT =			retrieve and process nzb-files via web interface
VERSION =			0.7.20
DISTNAME =			SABnzbd-${VERSION}-src
PKGNAME =			sabnzbd-${VERSION}
CATEGORIES =			news
HOMEPAGE =			http://sabnzbd.org/
MAINTAINER =			Marcus Glocker <marcus@nazgul.ch>
REVISION =			0

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =			${MASTER_SITE_SOURCEFORGE:=sabnzbdplus/}

MODULES =			lang/python

BUILD_DEPENDS =			${_MODPY_BUILD_DEPENDS}
RUN_DEPENDS =			archivers/par2cmdline \
				archivers/unrar \
				archivers/unzip \
				devel/py-cheetah \
				devel/py-notify \
				news/py-yenc \
				security/py-openssl

NO_BUILD =			Yes
NO_TEST =			Yes
PKG_ARCH =			*

WRKSRC =			${WRKDIR}/SABnzbd-${VERSION}

do-install:
	${INSTALL_DATA_DIR} \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/sabnzbd
	cp -Rp ${WRKSRC}/* \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/sabnzbd
	${SUBST_CMD} -c ${FILESDIR}/sabnzbd ${WRKSRC}/sabnzbd/sabnzbd
	${INSTALL_SCRIPT} ${WRKSRC}/sabnzbd/sabnzbd ${PREFIX}/bin/sabnzbd
	chown -R ${BINOWN}:${BINGRP} \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/sabnzbd

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/sabnzbd

.include <bsd.port.mk>
