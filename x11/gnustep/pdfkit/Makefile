# $OpenBSD: Makefile,v 1.12 2013/09/22 23:27:32 sebastia Exp $

COMMENT =	framework for accessing and rendering PDF content

BROKEN =	shows PDFs only white, and breaks GWorkspace on macppc

DISTNAME =	PDFKit-0.9.3
SHARED_LIBS +=	PDFKit	0.0

HOMEPAGE =	http://wiki.gnustep.org/index.php/PDFKit
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =		x11/gnustep
MODGNUSTEP_NEEDS_BASE =	No
MODGNUSTEP_NEEDS_GUI =	No
WANTLIB += 		stdc++ pthread freetype m
BUILD_DEPENDS =		x11/gnustep/gui

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	${MAKE_ENV}
CONFIGURE_ARGS =	--with-freetype2-add-includes=${X11BASE}/include \
			--with-freetype2-includes=${X11BASE}/include/freetype2
MAKE_FLAGS =		PDFKit_INTERFACE_VERSION=${LIBPDFKit_VERSION}

.include <bsd.port.mk>
