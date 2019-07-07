# $OpenBSD: Makefile,v 1.62 2019/07/07 11:20:51 ajacoutot Exp $

COMMENT=		library for bits of crypto UI and parsing

GNOME_PROJECT=		gcr
GNOME_VERSION=		3.28.1

REVISION=		1

SHARED_LIBS +=  gck-1                2.0      # 0.0
SHARED_LIBS +=  gcr-base-3           3.0      # 1.0
SHARED_LIBS +=  gcr-ui-3             3.0      # 1.0

# LGPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 atk-bridge-2.0 c cairo cairo-gobject epoxy
WANTLIB += expat ffi fontconfig freetype fribidi gcrypt gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error graphite2 gthread-2.0 gtk-3 harfbuzz iconv intl m
WANTLIB += p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread xcb xcb-render xcb-shm z

MODULES=		devel/dconf \
			x11/gnome

MODGNOME_TOOLS +=	desktop-file-utils gobject-introspection
MODGNOME_TOOLS +=	gtk-update-icon-cache shared-mime-info vala

LIB_DEPENDS=		x11/gtk+3 \
			security/libgcrypt \
			security/p11-kit

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		ac_cv_path_GNUPG=${LOCALBASE}/bin/gpg2
CONFIGURE_ARGS=		--disable-valgrind

BUILD_DEPENDS=		gnupg->=2:security/gnupg2
RUN_DEPENDS=		gnupg->=2:security/gnupg2

# Need xsltproc in order to build with gobject introspection
BUILD_DEPENDS +=	textproc/libxslt

# regression tests call 'env python'
MODULES +=		lang/python
TEST_DEPENDS +=		${MODPY_RUN_DEPENDS}
MODPY_RUNDEP=		No
MODPY_BUILDDEP=		No
pre-test:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
