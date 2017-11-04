# $OpenBSD: Makefile,v 1.90 2017/11/04 16:05:23 kili Exp $

COMMENT=	PDF viewer for X11

DISTNAME=	xpdf-4.00
CATEGORIES=	textproc x11

MASTER_SITES=	https://www.xpdfreader.com/dl/

HOMEPAGE=	https://www.xpdfreader.com/

# GPLv2 only or GPLv3 only or both (at our choice)
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/cmake \
		X11/qt5

RUN_DEPENDS=	print/ghostscript/gnu-fonts

# Add jpeg, png, tiff as rdep and bdep so cmake always pick them up and
# xpdf is able to export to those formats. Not strictly needed for jpeg
# and png, because they are pulled in by qt and its dependencies, but
# better be explicit here.
# In addtion, qtimageformats is required at runtime to let tiff export
# work.
RUN_DEPENDS +=	graphics/jpeg \
		graphics/png \
		graphics/tiff \
		x11/qt5/qtimageformats

BUILD_DEPENDS +=graphics/jpeg \
		graphics/png \
		graphics/tiff

# Don't pick up libpaper -- the build currently fails to link against
# it.
CONFIGURE_ARGS +=	-DHAVE_PAPER_H=0

# XXX
# Doesn't work, neither with -DCMAKE_LIBRARY_PATH=${LOCALBASE}/lib nor
# with CMAKE_LIBRARY_PATH=${LOCALBASE}/lib in the environment.
# CONFIGURE_ARGS +=	-DXPDFWIDGET_PRINTING=true

CXXFLAGS+=	-DLOCALBASE=\\\"${LOCALBASE}\\\"

WANTLIB=	Qt5Core Qt5Gui Qt5Widgets freetype c m png pthread \
		${COMPILER_LIBCXX} z

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xpdf
	${INSTALL_DATA} ${WRKSRC}/doc/sample-xpdfrc \
		${PREFIX}/share/examples/xpdf/xpdfrc
# already in poppler-utils
.for i in pdffonts pdfimages pdfinfo pdftohtml pdftoppm pdftops pdftotext
	rm ${PREFIX}/man/man1/$i.1
	rm ${PREFIX}/bin/$i
.endfor

.include <bsd.port.mk>
