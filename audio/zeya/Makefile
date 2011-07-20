# $OpenBSD: Makefile,v 1.1.1.1 2011/07/20 07:54:58 dcoppa Exp $

COMMENT =	html5-powered web music server

MODPY_EGG_VERSION = 0.5
DISTNAME =	zeya_${MODPY_EGG_VERSION}.orig
PKGNAME =	zeya-${MODPY_EGG_VERSION}
REVISION =	0
CATEGORIES =	audio www

HOMEPAGE =	http://web.psung.name/zeya/

MASTER_SITES =	http://archive.ubuntu.com/ubuntu/pool/universe/z/zeya/ \
		http://ftp.de.debian.org/debian/pool/main/z/zeya/

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# AGPLv3 (GNU Affero Public License)
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/python

RUN_DEPENDS =		audio/faad \
			audio/flac \
                        audio/mpg123 \
			audio/py-tagpy \
                        audio/vorbis-tools \
			devel/py-simplejson

MODPY_ADJ_FILES =	zeya.py \
			zeyaclient.py \
			zeyatest.py

ZEYA_MODULES =		${WRKBUILD}/backends.py \
			${WRKBUILD}/common.py \
			${WRKBUILD}/decoders.py \
			${WRKBUILD}/directory.py \
			${WRKBUILD}/m3u.py \
			${WRKBUILD}/options.py \
			${WRKBUILD}/pls.py \
			${WRKBUILD}/rhythmbox.py

NO_BUILD =		Yes
NO_REGRESS =		Yes
PKG_ARCH =		*
WRKDIST =		${WRKDIR}

do-install:
	${SUBST_CMD} ${WRKBUILD}/backends.py \
		${WRKBUILD}/decoders.py ${WRKBUILD}/zeya.py \
			${WRKBUILD}/zeyaclient.py
	${INSTALL_SCRIPT} ${WRKBUILD}/zeya.py ${PREFIX}/sbin/zeya
	${INSTALL_SCRIPT} ${WRKBUILD}/zeyaclient.py \
		${PREFIX}/bin/zeyaclient
	${INSTALL_DATA_DIR} ${PREFIX}/lib/zeya ${PREFIX}/share/zeya
	${INSTALL_DATA} ${ZEYA_MODULES} ${PREFIX}/lib/zeya/
	${INSTALL_DATA} ${WRKBUILD}/resources/* ${PREFIX}/share/zeya/
	${INSTALL_MAN} ${WRKBUILD}/doc/zeyaclient.1 ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKBUILD}/doc/zeya.1 ${PREFIX}/man/man8/zeya.8

.include <bsd.port.mk>
