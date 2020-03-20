# $OpenBSD: Makefile,v 1.70 2020/03/20 16:44:27 naddy Exp $

COMMENT=	desktop publishing program
DISTNAME=	scribus-1.5.5
CATEGORIES=	print

HOMEPAGE=	https://www.scribus.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5OpenGL
WANTLIB += Qt5PrintSupport Qt5Widgets Qt5Xml c cairo cups execinfo
WANTLIB += fontconfig freetype harfbuzz harfbuzz-icu hunspell-1.6
WANTLIB += icudata icuuc jpeg lcms2 m podofo poppler ${MODPY_WANTLIB}
WANTLIB += tiff util xml2 z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scribus/}
EXTRACT_SUFX=	.tar.xz

MODULES=	x11/qt5 \
		devel/cmake \
		lang/python

BUILD_DEPENDS=	devel/boost

RUN_DEPENDS=	devel/desktop-file-utils \
		graphics/py-Pillow \
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

# delete DOS line endings
post-extract:
	@find ${WRKSRC} -type f \( -name "*.cpp" -o -name "*.h" \) -exec \
		perl -i -pe 's/\r$$//' {} +

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	@${INSTALL_DATA} ${WRKSRC}/scribus.desktop \
		${PREFIX}/share/applications/scribus.desktop

.include <bsd.port.mk>
