DPB_PROPERTIES=	parallel

COMMENT=	desktop publishing program
DISTNAME=	scribus-1.7.0
CATEGORIES=	print

HOMEPAGE=	https://www.scribus.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB} GL Qt6Core5Compat
WANTLIB += Qt6Core Qt6Gui Qt6Network Qt6PrintSupport Qt6Svg
WANTLIB += Qt6Widgets Qt6Xml c cairo cups execinfo fontconfig
WANTLIB += freetype harfbuzz harfbuzz-icu hunspell-1.7 icudata
WANTLIB += icuuc jpeg lcms2 m png podofo poppler tiff util xml2
WANTLIB += z harfbuzz-subset
WANTLIB += qt6advanceddocking

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
		x11/qtadvanceddocking \
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
