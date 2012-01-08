# $OpenBSD: Makefile,v 1.8 2012/01/08 12:03:09 sebastia Exp $

COMMENT =	framework for accessing and rendering PDF content

DISTNAME =	PDFKit-0.9.1
REVISION =	0
SHARED_LIBS +=	PDFKit	0.0

HOMEPAGE =	http://wiki.gnustep.org/index.php/PDFKit
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =		x11/gnustep
MODGNUSTEP_NEEDS_BASE =	No
MODGNUSTEP_NEEDS_GUI =	No
WANTLIB += 		freetype m
BUILD_DEPENDS =		x11/gnustep/gui \
			textproc/xpdf:patch

BUNDLED_XPDF =		3.02

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		${MAKE_ENV} LDFLAGS="-lz" CPPFLAGS="-I${X11BASE}/include"
CONFIGURE_ARGS =	--with-freetype2-add-includes=${X11BASE}/include \
			--with-freetype2-includes=${X11BASE}/include/freetype2
MAKE_FLAGS =		PDFKit_INTERFACE_VERSION=${LIBPDFKit_VERSION}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/xpdf/xpdf-${BUNDLED_XPDF}/xpdf/Makefile.in
	cp ${WRKSRC}/xpdf/xpdf-${BUNDLED_XPDF}/GNUmakefile.in ${WRKDIR}/textproc/xpdf/xpdf-*
	cp ${WRKSRC}/xpdf/xpdf-${BUNDLED_XPDF}/Makefile.in ${WRKDIR}/textproc/xpdf/xpdf-*
	cp ${WRKSRC}/xpdf/xpdf-${BUNDLED_XPDF}/xpdf/Makefile.in ${WRKDIR}/textproc/xpdf/xpdf-*/xpdf
	rm -r ${WRKSRC}/xpdf/xpdf-${BUNDLED_XPDF}
	ln -s ${WRKDIR}/textproc/xpdf/xpdf-* ${WRKSRC}/xpdf/xpdf-${BUNDLED_XPDF}

.include <bsd.port.mk>
