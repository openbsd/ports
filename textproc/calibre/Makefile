# $OpenBSD: Makefile,v 1.32 2014/04/27 21:10:17 sthen Exp $

COMMENT =		ebook management application

DISTNAME =		calibre-1.34.0
CATEGORIES =		textproc
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=calibre/}
EXTRACT_SUFX =		.tar.xz

HOMEPAGE =		http://calibre-ebook.com/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python \
			x11/qt4

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += ICE MagickCore MagickWand lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml SM X11 Xext Xi Xinerama Xrender
WANTLIB += chm fontconfig freetype icudata icui18n icuio icuuc m mtp
WANTLIB += podofo pthread stdc++ usb-1.0 z

LIB_DEPENDS=		devel/chmlib \
			devel/libmtp \
			devel/libusb1 \
			graphics/ImageMagick \
			textproc/icu4c \
			textproc/podofo

COMMON_DEPENDS =	databases/py-apsw \
			devel/py-dateutil \
			devel/xdg-utils \
			graphics/ImageMagick \
			graphics/libwmf \
			graphics/py-Pillow \
			net/py-dnspython \
			graphics/png \
			print/poppler, \
			print/poppler,,-qt4 \
			textproc/py-cssselect \
			textproc/py-cssutils>=0.9.9 \
			textproc/py-lxml>=2.2.8 \
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
			devel/desktop-file-utils \
			misc/shared-mime-info \
			print/poppler,-utils \
			x11/gtk+2,-guic

LDFLAGS +=		-L${LOCALBASE}/lib
MAKE_ENV +=		QMAKE="${LOCALBASE}/bin/qmake4"
MAKE_ENV +=		LDFLAGS="${LDFLAGS}"
MAKE_ENV +=		FT_LIB_DIR="${X11BASE}/lib"
MAKE_ENV +=		XDG_DATA_DIRS="${PREFIX}/share"
MAKE_ENV +=		PODOFO_INC_DIR="${LOCALBASE}/include/podofo"
MAKE_ENV +=		PODOFO_LIB_DIR="${LOCALBASE}/lib"

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
# Remove bundled cherrypy so it uses the system version
pre-configure:
	cd ${WRKSRC} && (rm -rf src/cherrypy ; \
		find . -name '*.py' -print0 | xargs -0 perl -pi -e \
		's,#!/usr/bin/env python(2)?,#!${MODPY_BIN},' )
	cd ${WRKDIR}; ln -fs x11/qt4/qt-everywhere-opensource-src-*/include
	cd ${WRKSRC}/setup && ${SUBST_CMD} extensions.py build_environment.py
	cp ${FILESDIR}/fake-xdg ${WRKDIR}/bin; chmod +x ${WRKDIR}/bin/fake-xdg
.for i in xdg-icon-resource xdg-desktop-menu xdg-mime
	ln -s fake-xdg ${WRKDIR}/bin/$i
.endfor

do-install:
	${MODPY_CMD} ${MODPY_DISTUTILS_INSTALL} ${MODPY_DISTUTILS_INSTALLARGS}
	rm -rf ${WRKDIR}/.config # to unbreak 'make clean'; created as root
	${INSTALL_DATA_DIR} ${PREFIX}/share/calibre/recipes
	cd ${WRKSRC}/recipes && find . -type f -exec \
	    ${INSTALL_DATA} {} ${PREFIX}/share/calibre/recipes/ \;

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${PREFIX}/lib/calibre
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${PREFIX}/share/calibre

.include <bsd.port.mk>
