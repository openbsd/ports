# $OpenBSD: Makefile,v 1.3 2011/04/18 12:38:17 sebastia Exp $

COMMENT =	framework for accessing and rendering PDF content

REVISION =	1
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
			textproc/xpdf:patch

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV =		${MAKE_ENV} LDFLAGS="-lz" CPPFLAGS="-I${X11BASE}/include"
CONFIGURE_ARGS =	--with-freetype2-add-includes=${X11BASE}/include \
			--with-freetype2-includes=${X11BASE}/include/freetype2
MAKE_FLAGS =		PDFKit_INTERFACE_VERSION=${LIBPDFKit_VERSION}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/xpdf/xpdf-3.02/xpdf/Makefile.in
	cp ${WRKSRC}/xpdf/xpdf-3.02/GNUmakefile.in ${WRKDIR}/textproc/xpdf/xpdf-3.02
	cp ${WRKSRC}/xpdf/xpdf-3.02/Makefile.in ${WRKDIR}/textproc/xpdf/xpdf-3.02
	cp ${WRKSRC}/xpdf/xpdf-3.02/xpdf/Makefile.in ${WRKDIR}/textproc/xpdf/xpdf-3.02/xpdf
	rm -r ${WRKSRC}/xpdf/xpdf-3.02
	ln -s ${WRKDIR}/textproc/xpdf/xpdf-3.02 ${WRKSRC}/xpdf/xpdf-3.02

.include <bsd.port.mk>
