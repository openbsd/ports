COMMENT =		ebook management application

V =			5.44.0
DISTNAME =		calibre-$V
REVISION =		5

CATEGORIES =		textproc

HOMEPAGE =		https://calibre-ebook.com/

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB}
WANTLIB += GL Qt5Core Qt5DBus Qt5Gui Qt5Widgets crypto fontconfig
WANTLIB += freetype glib-2.0 gthread-2.0 hunspell-1.7 hyphen icudata
WANTLIB += icui18n icuio icuuc intl m podofo stemmer z

SITES =		https://download.calibre-ebook.com/$V/
PORTROACH =	site:https://github.com/kovidgoyal/calibre/archive/
EXTRACT_SUFX =	.tar.xz

MODULES =	lang/python \
		x11/qt5

COMMON_DEPENDS =	databases/py-apsw>=3.35.4 \
			devel/py-dateutil \
			devel/py-html5lib \
			devel/py-regex \
			devel/xdg-utils \
			graphics/libwmf \
			graphics/png \
			graphics/py-Pillow \
			net/py-dnspython \
			net/py-msgpack \
			net/py-zeroconf \
			print/poppler \
			print/poppler,-qt5 \
			textproc/py-css-parser \
			textproc/py-cssselect \
			textproc/py-cssutils \
			textproc/py-lxml \
			textproc/py-markdown \
			textproc/py-toml \
			textproc/py-webencodings \
			www/py-CherryPy \
			www/py-beautifulsoup4 \
			www/py-html5-parser \
			www/py-mechanize \
			www/py-qtwebengine \
			x11/py-qt5

LIB_DEPENDS =		devel/gettext,-runtime \
			textproc/hunspell \
			textproc/hyphen \
			textproc/icu4c \
			textproc/libstemmer \
			textproc/podofo

BUILD_DEPENDS =		${COMMON_DEPENDS} \
			devel/py-qt-builder \
			sysutils/py-packaging

RUN_DEPENDS =		${COMMON_DEPENDS} \
			converters/py-html2text \
			devel/desktop-file-utils \
			devel/py-jeepney \
			misc/shared-mime-info \
			net/py-netifaces  \
			print/poppler,-utils \
			x11/gtk+4,-guic

SUBST_VARS =		WRKDIR

LDFLAGS +=		-L${LOCALBASE}/lib

MAKE_ENV +=		CALIBRE_PY3_PORT=1 \
			FT_LIB_DIR="${X11BASE}/lib" \
			LDFLAGS="${LDFLAGS}" \
			OVERRIDE_CFLAGS="${CFLAGS}" \
			OVERRIDE_LDFLAGS="${LDFLAGS}" \
			PODOFO_INC_DIR="${LOCALBASE}/include/podofo" \
			PODOFO_LIB_DIR="${LOCALBASE}/lib" \
			QMAKE="${MODQT_QMAKE}" \
			WITH_USB=yes \
			XDG_DATA_DIRS="${PREFIX}/share" \
			XDG_UTILS_INSTALL_MODE=system

PORTHOME =		${WRKDIR}
NO_TEST =		Yes
MODPY_SETUPTOOLS =	Yes

## setup.py doesn't like the options in our python module
MODPY_DISTUTILS_BUILD =		build
MODPY_DISTUTILS_INSTALL =	install --prefix=${LOCALBASE} \
				--root=${PREFIX}

# Cannot use MODPY_ADJ_FILES as there are ERANGE files with hard-coded shebang
pre-patch:
	cd ${WRKSRC} && find . -type f -name '*.py' -exec ${MODPY_BIN_ADJ} {} +

# Remove bundled cherrypy so it uses the system version
pre-configure:
	cd ${WRKSRC} && rm -rf src/cherrypy
	cd ${WRKSRC}/setup && ${SUBST_CMD} build.py build_environment.py
	cp ${FILESDIR}/fake-xdg ${WRKDIR}/bin; chmod +x ${WRKDIR}/bin/fake-xdg
.for i in xdg-icon-resource xdg-desktop-menu xdg-mime
	ln -s fake-xdg ${WRKDIR}/bin/$i
.endfor

do-install:
	${MODPY_CMD} ${MODPY_DISTUTILS_INSTALL} ${MODPY_DISTUTILS_INSTALLARGS}
	${INSTALL_DATA_DIR} ${PREFIX}/share/calibre/recipes
	cd ${WRKSRC}/recipes && find . -type f -exec \
	    ${INSTALL_DATA} {} ${PREFIX}/share/calibre/recipes/ \;

post-install:
	${MODPY_COMPILEALL} ${PREFIX}/{lib,share}/calibre

.include <bsd.port.mk>
