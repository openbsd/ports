# $OpenBSD: Makefile,v 1.102 2015/02/16 09:16:18 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		SAX-based render library for SVG files

GNOME_PROJECT=		librsvg
GNOME_VERSION=		2.40.6
REVISION=		0

SHARED_LIBS +=  rsvg-2               38.2     # 42.6

CATEGORIES=		devel graphics

### drop at next update
MASTER_SITES0=		https://git.gnome.org/browse/librsvg/patch/?id=
PATCH_DIST_STRIP=	-p1
PATCHFILES=		7803753d130da94db40c10cc75e98b9864dad620:0 \
			40af93e6eb1c94b90c3b9a0b87e0840e126bb8df:0 \
			8ee18b22ece0f869cb4e2e021c01138cbb8a0226:0 \
			53c50caecc970aef91cf8e3f1fde919f848d6f0c:0 \
			0035e95118a60c0cd3949c2300472d805e16a022:0 \
			400336480ed5abbe398d2fa646872a668205a5fd:0 \
			2c2db8dbe4b8f7f59654d2990f781af3d363b0ba:0 \
			cfa5cf4ac4a04977bb3fae08ad4e2d189f6498db:0 \
			5d8e48bf386e4bc8ffefb9262c7ae37b3ee27d9f:0 \
			bc189a77050e4029e1fe9be3a7d7400bc0640c21:0 \
			7f7a186a791718b94dc35a5c5559dd2d43049d12:0 \
			80f6366f8033a33b88640faea50976644aad2c66:0
###

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xrender c cairo croco-0.6 expat ffi fontconfig
WANTLIB += freetype gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 harfbuzz lzma m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs xcb xcb-render xcb-shm xml2 z

MODULES=		devel/gettext \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

LIB_DEPENDS=		devel/pango \
			graphics/gdk-pixbuf2 \
			textproc/libxml \
			www/libcroco

CONFIGURE_ARGS=		--disable-tools

# error: -Bsymbolic requested but not supported by ld
CONFIGURE_ARGS +=	--disable-Bsymbolic

post-install:
	rm ${PREFIX}/lib/gdk-pixbuf-2.0/2.10.0/loaders/*.{a,la}

.include <bsd.port.mk>
