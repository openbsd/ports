# $OpenBSD: Makefile,v 1.24 2013/11/09 15:02:14 sthen Exp $

COMMENT =		ebook management application

DISTNAME =		calibre-1.10.0
CATEGORIES =		textproc
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=calibre/}
EXTRACT_SUFX =		.tar.xz

HOMEPAGE =		http://calibre-ebook.com/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python \
			x11/qt4

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += ICE MagickCore MagickWand QtDBus QtGui QtSvg QtXml
WANTLIB += SM X11 Xext Xi Xinerama Xrender chm fontconfig freetype
WANTLIB += icudata icui18n icuio icuuc m mtp pthread stdc++ usb-1.0 z

LIB_DEPENDS=		devel/chmlib \
			devel/libmtp \
			devel/libusb1 \
			graphics/ImageMagick \
			textproc/icu4c

COMMON_DEPENDS =	devel/py-dateutil \
			devel/xdg-utils \
			graphics/ImageMagick \
			graphics/libwmf \
			graphics/py-Imaging \
			net/py-dnspython \
			graphics/png \
			print/poppler, \
			print/poppler,,-qt4 \
			textproc/py-cssselect \
			textproc/py-cssutils>=0.9.9 \
			textproc/py-lxml>=2.2.8 \
			textproc/py-pdf \
			www/py-beautifulsoup \
			www/py-CherryPy \
			www/py-mechanize \
			x11/py-qt4>=4.8.2p1 \
			www/py-mechanize

BUILD_DEPENDS =		${COMMON_DEPENDS}

# This is a disgusting workaround for calibre depending on private Qt4
# interfaces that are not intended for external use. Upstream is fairly
# hostile towards packagers and would prefer people directly run a file
# from his website as root without any verification.
BUILD_DEPENDS +=	x11/qt4:patch
UPSTREAM_CLUE_LEVEL =	0 # https://bugs.launchpad.net/calibre/+bug/1094719

SUBST_VARS =		WRKDIR

RUN_DEPENDS =		${COMMON_DEPENDS} \
			databases/py-apsw \
			devel/desktop-file-utils \
			misc/shared-mime-info \
			print/poppler,-utils

#CFLAGS +=		-I${X11BASE}/include -I${LOCALBASE}/include
LDFLAGS +=		-L${LOCALBASE}/lib
MAKE_ENV +=		QMAKE="${LOCALBASE}/bin/qmake4"
MAKE_ENV +=		LDFLAGS="${LDFLAGS}"
MAKE_ENV +=		FT_LIB_DIR="${X11BASE}/lib"

# Requires /sys filesystem for HW detection
MAKE_ENV +=		WITH_USB=no

WRKDIST =		${WRKDIR}/calibre
PORTHOME =		${WRKDIR}
NO_TEST =		Yes
MODPY_SETUPTOOLS =	Yes

## setup.py doesn't like the options in our python module
MODPY_DISTUTILS_BUILD =		build
MODPY_DISTUTILS_INSTALL =	install --prefix=${LOCALBASE} \
				--root=${PREFIX}

# There are 901 files that hard-code the python bin name
# Remove bundled cherrypy and pyPdf so it uses the system versions
pre-configure:
	cd ${WRKSRC} && (rm -rf src/cherrypy src/pyPdf ; \
		find . -name '*.py' -print0 | xargs -0 perl -pi -e \
		's,#!/usr/bin/env python(2)?,#!${MODPY_BIN},' )
	cd ${WRKDIR}; ln -s x11/qt4/qt-everywhere-opensource-src-*/include
	cd ${WRKSRC}/setup && ${SUBST_CMD} extensions.py build_environment.py

do-install:
	${MODPY_CMD} ${MODPY_DISTUTILS_INSTALL} ${MODPY_DISTUTILS_INSTALLARGS}
	rm -rf ${WRKDIR}/.config # to unbreak 'make clean'; created as root
	${INSTALL_DATA_DIR} ${PREFIX}/share/calibre/recipes
	cd ${WRKSRC}/recipes && find . -type f -exec \
	    ${INSTALL_DATA} {} ${PREFIX}/share/calibre/recipes/ \;

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/lib/calibre
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/calibre

.include <bsd.port.mk>
