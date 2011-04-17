# $OpenBSD: Makefile,v 1.1.1.1 2011/04/17 18:39:21 phessler Exp $

COMMENT =		ebook management application

# 0.7.46 and higher have problems repainting their windows..
DISTNAME =		calibre-0.7.45
CATEGORIES =		textproc
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=calibre/}

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/python \
			x11/qt4

LIB_DEPENDS=		devel/chmlib \
			graphics/ImageMagick \
			graphics/libwmf \
			print/poppler,-qt4 \
			textproc/icu4c
RUN_DEPENDS =		devel/py-dateutil \
			devel/xdg-utils \
			graphics/py-Imaging \
			net/py-dnspython \
			textproc/py-cssutils>=0.9.7 \
			textproc/py-lxml>=2.2.8 \
			textproc/py-pdf \
			www/py-beautifulsoup \
			www/py-cherrypy2 \
			www/py-mechanize \
			x11/py-qt4>=4.8.2p1 \
			www/py-mechanize
BUILD_DEPENDS =		${RUN_DEPENDS}

CFLAGS +=		"-I${LOCALBASE}/include"
LDFLAGS +=		"-L${LOCALBASE}/lib"
MAKE_ENV +=		QMAKE="${LOCALBASE}/bin/qmake4" \
			LDFLAGS="${LDFLAGS}" \
			FC_INC_DIR="${X11BASE}/include" \
			FC_LIB_DIR="${X11BASE}/lib" \
			PNG_INC_DIR="`pkg-config --cflags libpng`" \
			PNG_LIB_DIR="`pkg-config --libs libpng`"

# Requires /sys filesystem for HW detection
MAKE_ENV +=		WITH_USB=no

WRKDIST =		${WRKDIR}/calibre
PORTHOME =		${WRKDIR}
NO_REGRESS = 		Yes
MODPY_SETUPTOOLS =	Yes

## setup.py doesn't like the options in our python module
MODPY_DISTUTILS_BUILD = 	build
MODPY_DISTUTILS_INSTALL =	install --prefix=${LOCALBASE} \
				--root=${PREFIX}

# There are 901 files that hard-code the python bin name
# Remove bundled cherrypy and pyPdf so it uses the system versions
pre-configure:
	cd ${WRKSRC} && (rm -rf src/cherrypy src/pyPdf ; \
	    find . -name '*.py' -exec \
	    perl -pi -e 's,#!/usr/bin/env python,#!${MODPY_BIN},' {} \; )

do-install:
	${_MODPY_CMD} ${MODPY_DISTUTILS_INSTALL} ${MODPY_DISTUTILS_INSTALLARGS}
	${CHMOD} 755 ${PREFIX}/bin/calibre-mount-helper

.include <bsd.port.mk>
