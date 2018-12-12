# $OpenBSD: Makefile,v 1.14 2018/12/12 19:54:32 bket Exp $

COMMENT =			retrieve and process nzb-files via web interface
VERSION =			2.3.5
DISTNAME =			SABnzbd-${VERSION}
PKGNAME =			sabnzbd-${VERSION}
CATEGORIES =			news
HOMEPAGE =			https://sabnzbd.org/
MAINTAINER =			Marcus Glocker <marcus@nazgul.ch>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =			https://github.com/sabnzbd/sabnzbd/releases/download/${VERSION}/
EXTRACT_SUFX =			-src.tar.gz

MODULES =			lang/python

BUILD_DEPENDS =			${_MODPY_BUILD_DEPENDS}
RUN_DEPENDS =			archivers/par2cmdline \
				archivers/unrar \
				archivers/unzip \
				devel/py-cheetah \
				devel/py-notify \
				news/py-yenc \
				security/py-openssl \
				textproc/py-lxml

NO_BUILD =			Yes
NO_TEST =			Yes
PKG_ARCH =			*

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
