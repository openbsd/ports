COMMENT =		creates DjVu files from PDF files

V =			0.9.19
DISTNAME =		pdf2djvu-${V}
REVISION =		0

CATEGORIES =		graphics

HOMEPAGE =		http://jwilk.net/software/pdf2djvu

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += GraphicsMagick GraphicsMagick++ c djvulibre exiv2 iconv intl m
WANTLIB += poppler pthread ${LIBCXX}

SITES =		https://github.com/jwilk/pdf2djvu/releases/download/${V}/ \
		https://download.tuxfamily.org/jod/graphics/pdf2djvu/ \
		ftp://download.tuxfamily.org/jod/graphics/pdf2djvu/

EXTRACT_SUFX =		.tar.xz

COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		devel/gettext,-runtime\
			graphics/djvulibre \
			graphics/exiv2 \
			graphics/GraphicsMagick \
			print/poppler

# as of 0.9.19, tests still require python 2.7
NO_TEST =		Yes
#MODULES =		lang/python
#MODPY_BUILDDEP =	No
#MODPY_RUNDEP =		No
#TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR} \
#			${MODPY_RUN_DEPENDS}
#TEST_FLAGS =		PYTHON=${MODPY_BIN}
#TEST_TARGET =		test

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-openmp \
			--disable-rpath \
			--without-pstreams
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			CXXFLAGS="-std=gnu++17"

.include <bsd.port.mk>
