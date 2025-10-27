COMMENT =		ebook management application

V =			8.0.1
REVISION =		0
DISTNAME =		calibre-$V

CATEGORIES =		textproc

HOMEPAGE =		https://calibre-ebook.com/

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Widgets avcodec
WANTLIB += avformat avutil crypto freetype hunspell-1.7 hyphen
WANTLIB += icudata icui18n icuio icuuc m podofo ${MODPY_WANTLIB} stemmer
WANTLIB += swresample uchardet xkbcommon

SITES =		https://download.calibre-ebook.com/$V/
PORTROACH =	site:https://github.com/kovidgoyal/calibre/archive/
EXTRACT_SUFX =	.tar.xz

MODULES =	lang/python \
		x11/qt6

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
			sysutils/py-xxhash \
			print/poppler \
			print/poppler,-qt6 \
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
			www/py-qt6webengine \
			x11/py-qt6

LIB_DEPENDS +=		graphics/ffmpeg \
			textproc/hunspell \
			textproc/hyphen \
			textproc/icu4c \
			textproc/libstemmer \
			textproc/podofo>=0.10 \
			textproc/uchardet \
			x11/xkbcommon

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

SUBST_VARS =		WRKDIR CC CXX

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

do-build:
	cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} ${MODPY_BIN} setup.py build

do-install:
	cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} ${MODPY_BIN} setup.py install \
		--prefix=${TRUEPREFIX} --root=${PREFIX}
	${INSTALL_DATA_DIR} ${PREFIX}/share/calibre/recipes
	cd ${WRKSRC}/recipes && find . -type f -exec \
	    ${INSTALL_DATA} {} ${PREFIX}/share/calibre/recipes/ \;

post-install:
	${MODPY_COMPILEALL} ${PREFIX}/{lib,share}/calibre

.include <bsd.port.mk>
