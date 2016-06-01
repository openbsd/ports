# $OpenBSD: Makefile,v 1.9 2016/06/01 17:25:56 mglocker Exp $

COMMENT =			retrieve and process nzb-files via web interface
VERSION =			1.0.2
DISTNAME =			SABnzbd-${VERSION}-src
PKGNAME =			sabnzbd-${VERSION}
CATEGORIES =			news
HOMEPAGE =			http://sabnzbd.org/
MAINTAINER =			Marcus Glocker <marcus@nazgul.ch>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =			https://github.com/sabnzbd/sabnzbd/releases/download/${VERSION}/

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
	${SUBST_CMD} -m 555 -c ${FILESDIR}/sabnzbd ${WRKSRC}/sabnzbd/sabnzbd
	${INSTALL_SCRIPT} ${WRKSRC}/sabnzbd/sabnzbd ${PREFIX}/bin/sabnzbd
	chown -R ${BINOWN}:${BINGRP} \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/sabnzbd

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/sabnzbd

.include <bsd.port.mk>
