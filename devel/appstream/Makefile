# XXX if we start providing OpenBSD appstream data files into
# PREFIX/share/app-info, turn the @exec into a @tag (and add to portcheck);
# for an example, see:
# https://gitlab.archlinux.org/archlinux/packaging/packages/archlinux-appstream-data/-/blob/main/PKGBUILD

COMMENT-main=		access to machine-readable software metadata
COMMENT-qt6=		Qt5 interface for AppStream

V=			1.0.3
DISTNAME=		AppStream-${V}
EXTRACT_SUFX=		.tar.xz
PKGNAME-main=		${DISTNAME:L}
PKGNAME-qt6=		appstream-qt6-${V}

SHARED_LIBS += appstream                 1.0 # 1.0.3
SHARED_LIBS += appstream-compose         1.0 # 1.0.3
SHARED_LIBS += AppStreamQt               1.0 # 1.0.3

CATEGORIES=		devel

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=		https://www.freedesktop.org/wiki/Distributions/AppStream/

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB-main += c cairo curl fontconfig freetype gdk_pixbuf-2.0 gio-2.0
WANTLIB-main += glib-2.0 gobject-2.0 intl m pango-1.0 rsvg-2 stemmer
WANTLIB-main += xml2 xmlb yaml-0 zstd

WANTLIB-qt6 += ${COMPILER_LIBCXX} Qt6Core appstream gio-2.0 glib-2.0
WANTLIB-qt6 += gobject-2.0

SITES=			https://www.freedesktop.org/software/appstream/releases/

MULTI_PACKAGES=		-main -qt6

MODULES=		devel/meson \
			x11/qt6

BUILD_DEPENDS=		devel/gettext,-tools \
			devel/gobject-introspection \
			devel/gperf \
			lang/vala \
			textproc/gi-docgen \
			textproc/gtk-doc \
			textproc/itstool

LIB_DEPENDS-main=	devel/libyaml \
			net/curl \
			textproc/libstemmer \
			textproc/libxml \
			textproc/libxmlb \
			x11/gnome/librsvg

LIB_DEPENDS-qt6=	${BASE_PKGPATH},-main \
			${MODQT6_LIB_DEPENDS}

CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

CONFIGURE_ARGS=		-Dsystemd=false \
			-Dqt=true \
			-Dvapi=true \
			-Dcompose=true

# /usr/include/sys/sysctl.h:504:2: error: unknown type name 'u_long'
# src/as-system-info.c:466:23: error: use of undeclared identifier 'DT_LNK'
# src/as-system-info.c:466:23: error: use of undeclared identifier 'DT_DIR'
CFLAGS +=		-D_BSD_SOURCE

# needed for `make test'
PORTHOME=		${WRKDIST}

pre-configure:
	sed -i \
		-e "s,/usr/share,${LOCALBASE}/share,g" \
		-e "s,/var/lib,/var/db,g" \
		${WRKSRC}/compose/asc-hint-tags.c \
		${WRKSRC}/compose/asc-utils-fonts.c \
		${WRKSRC}/src/as-distro-extras.c \
		${WRKSRC}/src/as-pool.c \
		${WRKSRC}/src/as-utils.c \
		${WRKSRC}/src/as-utils.h \
		${WRKSRC}/src/as-validator-issue-tag.h
	sed -i "s,/usr,${LOCALBASE},g" ${WRKSRC}/tools/appstream-compose.c

.include <bsd.port.mk>
