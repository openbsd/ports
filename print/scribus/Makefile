DPB_PROPERTIES=	parallel

COMMENT=	desktop publishing program
DISTNAME=	scribus-1.7.0
CATEGORIES=	print
REVISION=	2

HOMEPAGE=	https://www.scribus.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Core5Compat Qt6Gui
WANTLIB += Qt6Network Qt6PrintSupport Qt6Svg Qt6Widgets Qt6Xml
WANTLIB += c cairo cups execinfo fontconfig freetype harfbuzz
WANTLIB += harfbuzz-icu harfbuzz-subset hunspell-1.7 icudata icuuc
WANTLIB += jpeg lcms2 m png podofo poppler qtadvanceddocking-qt6
WANTLIB += tiff util xml2 z ${MODPY_WANTLIB}

SITES=		${SITE_SOURCEFORGE:=scribus/}
EXTRACT_SUFX=	.tar.xz

MODULES=	x11/qt6 \
		devel/cmake \
		lang/python

BUILD_DEPENDS=	devel/boost

RUN_DEPENDS=	devel/desktop-file-utils \
		graphics/py-Pillow \
		print/ghostscript/gnu \
		textproc/antiword \
		misc/shared-mime-info \
		x11/gtk+4,-guic \
		${MODPY_TKINTER_DEPENDS}

LIB_DEPENDS=	graphics/lcms2 \
		graphics/tiff \
		print/cups,-libs \
		print/poppler \
		devel/harfbuzz,-icu \
		textproc/hunspell \
		textproc/libxml \
		textproc/podofo \
		graphics/jpeg \
		x11/qt6/qt5compat \
		x11/qt6/qtsvg \
		x11/qtadvanceddocking>=4.4.0 \
		${MODPY_LIB_DEPENDS}

CXXFLAGS+=	-D CMS_NO_REGISTER_KEYWORD
CONFIGURE_ARGS+=	-DCMAKE_INSTALL_MANDIR="${LOCALBASE}/man/" \
			-DWANT_CPP20=ON \
			-DWANT_NOOSG=1
#DEBUG_CONFIGURE_ARGS +=	-DWANT_DEBUG=1

FIX_CRLF_FILES=	`find . -type f \( -name "*.cpp" -o -name "*.h" \)`

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	@${INSTALL_DATA} ${WRKSRC}/scribus.desktop \
		${PREFIX}/share/applications/scribus.desktop

.include <bsd.port.mk>
