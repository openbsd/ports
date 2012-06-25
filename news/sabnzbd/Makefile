# $OpenBSD: Makefile,v 1.2 2012/06/25 20:54:14 mglocker Exp $

COMMENT =			retrieve and process nzb-files via web interface
VERSION =			0.7.0
DISTNAME =			SABnzbd-${VERSION}-src
PKGNAME =			sabnzbd-${VERSION}
CATEGORIES =			news
HOMEPAGE =			http://sabnzbd.org/
MAINTAINER =			Marcus Glocker <marcus@nazgul.ch>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

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
NO_REGRESS =			Yes
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
