# $OpenBSD: Makefile,v 1.1.1.1 2011/01/03 14:20:28 sebastia Exp $

COMMENT =	framework for accessing and rendering PDF content

DISTNAME =	PDFKit-0.9
PKGNAME =	${DISTNAME:L}
SHARED_LIBS +=	PDFKit	0.0

HOMEPAGE =	http://wiki.gnustep.org/index.php/PDFKit
MASTER_SITES =	http://savannah.nongnu.org/download/gap/

MODULES =		x11/gnustep
MODGNUSTEP_NEEDS_BASE =	No
MODGNUSTEP_NEEDS_GUI =	No
WANTLIB += 		freetype m
BUILD_DEPENDS =		x11/gnustep/gui \
			textproc/xpdf>=xpdf-3.02.5p0:patch

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV =		${MAKE_ENV} LDFLAGS="-lz" CPPFLAGS="-I${X11BASE}/include"
CONFIGURE_ARGS =	--with-freetype2-add-includes=${X11BASE}/include \
			--with-freetype2-includes=${X11BASE}/include/freetype2
MAKE_FLAGS =		PDFKit_INTERFACE_VERSION=${LIBPDFKit_VERSION}

pre-configure:
	cp ${WRKSRC}/xpdf/xpdf-3.02/GNUmakefile.in ${WRKDIR}/textproc/xpdf/xpdf-3.02
	cp ${WRKSRC}/xpdf/xpdf-3.02/Makefile.in ${WRKDIR}/textproc/xpdf/xpdf-3.02
	cp ${WRKSRC}/xpdf/xpdf-3.02/xpdf/Makefile.in ${WRKDIR}/textproc/xpdf/xpdf-3.02/xpdf
	rm -r ${WRKSRC}/xpdf/xpdf-3.02
	ln -s ${WRKDIR}/textproc/xpdf/xpdf-3.02 ${WRKSRC}/xpdf/xpdf-3.02

.include <bsd.port.mk>
