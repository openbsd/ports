# $OpenBSD: Makefile,v 1.80 2021/11/02 00:01:54 sthen Exp $

DPB_PROPERTIES=	parallel

COMMENT=	desktop publishing program
DISTNAME=	scribus-1.5.7
CATEGORIES=	print
REVISION=	1

HOMEPAGE=	https://www.scribus.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB}
WANTLIB += Qt5Core Qt5Gui Qt5Network Qt5OpenGL Qt5PrintSupport
WANTLIB += Qt5Widgets Qt5Xml c cairo cups execinfo fontconfig
WANTLIB += freetype harfbuzz harfbuzz-icu hunspell-1.7 icudata
WANTLIB += icuuc jpeg lcms2 m png podofo poppler tiff util xml2
WANTLIB += z harfbuzz-subset

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scribus/}
EXTRACT_SUFX=	.tar.xz

MODULES=	x11/qt5 \
		devel/cmake \
		lang/python

BUILD_DEPENDS=	devel/boost

RUN_DEPENDS=	devel/desktop-file-utils \
		graphics/py-Pillow${MODPY_FLAVOR} \
		print/ghostscript/gnu \
		textproc/antiword \
		misc/shared-mime-info \
		x11/gtk+3,-guic \
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
		${MODPY_LIB_DEPENDS}

CONFIGURE_ARGS+=	-DCMAKE_INSTALL_MANDIR="${LOCALBASE}/man/" \
			-DWANT_NOOSG=1
#DEBUG_CONFIGURE_ARGS +=	-DWANT_DEBUG=1

FIX_CRLF_FILES=	`find . -type f \( -name "*.cpp" -o -name "*.h" \)`

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	@${INSTALL_DATA} ${WRKSRC}/scribus.desktop \
		${PREFIX}/share/applications/scribus.desktop

.include <bsd.port.mk>
