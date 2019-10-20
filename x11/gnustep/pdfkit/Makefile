# $OpenBSD: Makefile,v 1.23 2019/10/20 08:03:04 ajacoutot Exp $

COMMENT =	framework for accessing and rendering PDF content

REVISION =	3
DISTNAME =	PDFKit-1.0.1
SHARED_LIBS +=	PDFKit	0.0

HOMEPAGE =	http://wiki.gnustep.org/index.php/PDFKit
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =		x11/gnustep
MODGNUSTEP_IS_FRAMEWORK	= Yes
WANTLIB += 		pthread freetype m z
WANTLIB += ${COMPILER_LIBCXX}
BUILD_DEPENDS =		x11/gnustep/gui

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	${MAKE_ENV}
CONFIGURE_ARGS =	--with-freetype2-add-includes=${X11BASE}/include \
			--with-freetype2-includes=${X11BASE}/include/freetype2
MAKE_FLAGS =		PDFKit_INTERFACE_VERSION=${LIBPDFKit_VERSION} \
			LDFLAGS=-fuse-ld=bfd

.include <bsd.port.mk>
