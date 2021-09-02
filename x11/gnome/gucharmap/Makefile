# $OpenBSD: Makefile,v 1.132 2021/09/02 14:32:37 jasper Exp $

COMMENT=		Unicode character map for the GNOME project

GNOME_PROJECT=		gucharmap
GNOME_VERSION=		13.0.8

SHARED_LIBS += gucharmap_2_90            7.1 # 7.0.0

# GPLv3+
PERMIT_PACKAGE=		Yes

WANTLIB += atk-1.0 c cairo gdk-3 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-3 intl pango-1.0 pangocairo-1.0

MASTER_SITES =		https://gitlab.gnome.org/GNOME/gucharmap/-/archive/${GNOME_VERSION}/
EXTRACT_SUFX =		.tar.bz2

# C11
COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection vala

BUILD_DEPENDS=		archivers/unzip \
			devel/gsettings-desktop-schemas \
			textproc/unicode-ucd

RUN_DEPENDS =		devel/gsettings-desktop-schemas

LIB_DEPENDS=		x11/gtk+3,-main

CONFIGURE_ARGS +=	-Ducd_path=${LOCALBASE}/share/unicode/ucd/ \
			-Ddocs=false

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mlld}
# ERROR: Assert failed: -Wl,-Bsymbolic-functions is required but not supported
CONFIGURE_ARGS +=	-Dsymbolic_functions=false
.endif

.include <bsd.port.mk>
