# $OpenBSD: Makefile,v 1.60 2019/03/28 15:52:30 robert Exp $

COMMENT=		library for bits of crypto UI and parsing

GNOME_PROJECT=		gcr
GNOME_VERSION=		3.28.1

REVISION=		0

SHARED_LIBS +=  gck-1                2.0      # 0.0
SHARED_LIBS +=  gcr-base-3           3.0      # 1.0
SHARED_LIBS +=  gcr-ui-3             3.0      # 1.0

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 c cairo cairo-gobject
WANTLIB += epoxy expat ffi fontconfig freetype fribidi gcrypt
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error graphite2 gthread-2.0 gtk-3 harfbuzz iconv
WANTLIB += intl m p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png16 pthread xcb xcb-render xcb-shm
WANTLIB += z

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
