COMMENT=		library for AppStream metadata

DISTNAME=		appstream-glib-0.8.3
EXTRACT_SUFX=		.tar.xz

SHARED_LIBS += appstream-glib            3.7 # 8.0.10

CATEGORIES=		devel

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=		http://people.freedesktop.org/~hughsient/appstream-glib/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += archive c cairo curl fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 intl json-glib-1.0
WANTLIB += pango-1.0 uuid yaml-0

SITES=	http://people.freedesktop.org/~hughsient/appstream-glib/releases/

MODULES=		devel/meson \
			textproc/intltool \
			x11/gnome

MODGNOME_TOOLS=		docbook gobject-introspection

# C11
COMPILER=		base-clang ports-clang
COMPILER_LANGS=		c

BUILD_DEPENDS=		devel/gperf

LIB_DEPENDS=		archivers/libarchive \
			devel/json-glib \
			devel/libyaml \
			net/curl \
			sysutils/e2fsprogs \
			x11/gtk+3

CONFIGURE_ARGS=		-Drpm=false

# disable meson's default of using "-Wl,--as-needed" on ld.bfd arches;
# build failures due to undefined references are often seen.
.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mlld}
CONFIGURE_ARGS +=	-Db_asneeded=false
.endif

# needed for `make test'
PORTHOME=		${WRKDIST}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/client/as-compose.c
	cd ${WRKSRC} && sed -i "s,/usr/share,${LOCALBASE}/share,g" \
		client/as-util.c \
		libappstream-glib/as-utils.c \
		libappstream-glib/as-self-test.c \
		libappstream-builder/plugins/asb-plugin-desktop.c \
		libappstream-builder/plugins/asb-plugin-hardcoded.c \
		libappstream-builder/plugins/asb-plugin-shell-extension.c \
		libappstream-builder/plugins/asb-plugin-appdata.c \
		libappstream-builder/plugins/asb-plugin-font.c \
		libappstream-builder/plugins/asb-plugin-gettext.c \
		libappstream-builder/plugins/asb-plugin-icon.c \
		libappstream-builder/asb-utils.c \
		libappstream-builder/asb-self-test.c
###

.include <bsd.port.mk>
