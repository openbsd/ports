# $OpenBSD: Makefile,v 1.67 2019/07/12 20:51:19 sthen Exp $

BROKEN-alpha=	.got subsegment exceeds 64K

COMMENT=	GTK+2 Python bindings

GNOME_PROJECT=	pygtk
GNOME_VERSION=	2.24.0
PKGNAME=	py-gtk2-${VERSION}
REVISION=	6

CATEGORIES=	x11

HOMEPAGE=	http://www.pygtk.org/

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 cairo expat ffi fontconfig freetype fribidi
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz iconv intl lzma m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread xcb xcb-render xcb-shm
WANTLIB += xml2 z

EXTRACT_SUFX=		.tar.bz2


MODULES=	lang/python \
		x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	devel/libglade2
RUN_DEPENDS=	graphics/py-cairo>=1.2 \
		devel/py-gobject>=2.26.0 \
		math/py-numpy

USE_GMAKE=	No

.if ${MACHINE_ARCH} == "mips64" || ${MACHINE_ARCH} == "mips64el"
PATCH_LIST=	patch-* sup-mips64-*
.endif

CONFIGURE_STYLE=gnu

# pick bind_textdomain_codeset
MODGNOME_LDFLAGS=-lintl -liconv

TEST_IS_INTERACTIVE= x11

pre-configure:
	@find ${WRKDIST} -name \*.py | \
	    xargs perl -i -pe 's,^#!/usr/bin/env python,#!${MODPY_BIN},'

post-install:
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/gtk-2.0/{,gtk}/*.{a,la}

.include <bsd.port.mk>
