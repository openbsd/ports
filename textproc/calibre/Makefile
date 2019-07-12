# $OpenBSD: Makefile,v 1.74 2019/07/12 20:49:56 sthen Exp $

COMMENT =		ebook management application

# XXX 3.x removes loads of bundled deps which need to be ported
V =			2.85.1
DISTNAME =		calibre-$V
CATEGORIES =		textproc
EXTRACT_SUFX =		.tar.xz
REVISION =		10

HOMEPAGE =		https://calibre-ebook.com/

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += EGL GL Qt5Core Qt5DBus Qt5Gui Qt5Widgets X11 Xext Xrender
WANTLIB += chm crypto fontconfig freetype glib-2.0 gthread-2.0
WANTLIB += icudata icui18n icuio icuuc intl m podofo pthread
WANTLIB += z ${MODPY_WANTLIB} ${COMPILER_LIBCXX}

MASTER_SITES =	https://github.com/kovidgoyal/calibre/releases/download/v$V/

MODULES =		lang/python \
			x11/qt5

LIB_DEPENDS=		devel/chmlib \
			devel/gettext,-runtime \
			textproc/icu4c \
			textproc/podofo

COMMON_DEPENDS =	databases/py-apsw \
			devel/py-dateutil \
			devel/xdg-utils \
			graphics/libwmf \
			graphics/py-Pillow \
			net/py-dnspython \
			graphics/png \
			print/poppler \
			print/poppler,-qt5 \
			textproc/py-cssselect \
			textproc/py-cssutils>=0.9.9 \
			textproc/py-lxml>=2.2.8 \
			textproc/py-xml \
			www/py-beautifulsoup \
			www/py-CherryPy \
			www/py-mechanize \
			x11/py-qt5 \
			www/py-mechanize

BUILD_DEPENDS =		${COMMON_DEPENDS}

SUBST_VARS =		WRKDIR

RUN_DEPENDS =		${COMMON_DEPENDS} \
			devel/desktop-file-utils \
			misc/shared-mime-info \
			net/py-netifaces \
			print/poppler,-utils \
			x11/gtk+3,-guic

LDFLAGS +=		-L${LOCALBASE}/lib
MAKE_ENV +=		QMAKE="${LOCALBASE}/bin/qmake-qt5"
MAKE_ENV +=		LDFLAGS="${LDFLAGS}"
MAKE_ENV +=		FT_LIB_DIR="${X11BASE}/lib"
MAKE_ENV +=		XDG_DATA_DIRS="${PREFIX}/share"
MAKE_ENV +=		PODOFO_INC_DIR="${LOCALBASE}/include/podofo"
MAKE_ENV +=		PODOFO_LIB_DIR="${LOCALBASE}/lib"

PORTHOME =		${WRKDIR}
NO_TEST =		Yes
MODPY_SETUPTOOLS =	Yes

## setup.py doesn't like the options in our python module
MODPY_DISTUTILS_BUILD =		build
MODPY_DISTUTILS_INSTALL =	install --prefix=${LOCALBASE} \
				--root=${PREFIX}

# There are ERANGE files that hard-code the python bin name
# Remove bundled cherrypy so it uses the system version
pre-configure:
	cd ${WRKSRC} && (rm -rf src/cherrypy ; \
		find . -name '*.py' -print0 | xargs -0 perl -pi.beforesubst -e \
		's,#!/usr/bin/env python(2)?,#!${MODPY_BIN},' )
	cd ${WRKSRC}/setup && ${SUBST_CMD} build.py build_environment.py
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
