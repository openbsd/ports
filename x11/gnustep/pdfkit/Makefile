# $OpenBSD: Makefile,v 1.14 2015/10/26 11:53:15 sebastia Exp $

COMMENT =	framework for accessing and rendering PDF content

BROKEN =	shows PDFs only white, and breaks GWorkspace on macppc

REVISION =	1
DISTNAME =	PDFKit-0.9.3
SHARED_LIBS +=	PDFKit	0.0

HOMEPAGE =	http://wiki.gnustep.org/index.php/PDFKit
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =		x11/gnustep
MODGNUSTEP_IS_FRAMEWORK	= Yes
WANTLIB += 		stdc++ pthread freetype m
BUILD_DEPENDS =		x11/gnustep/gui

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	${MAKE_ENV}
CONFIGURE_ARGS =	--with-freetype2-add-includes=${X11BASE}/include \
			--with-freetype2-includes=${X11BASE}/include/freetype2
MAKE_FLAGS =		PDFKit_INTERFACE_VERSION=${LIBPDFKit_VERSION}

.include <bsd.port.mk>
