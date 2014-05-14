# $OpenBSD: Makefile,v 1.40 2014/05/14 06:43:27 ajacoutot Exp $

COMMENT=	library for bits of crypto UI and parsing

GNOME_PROJECT=	gcr
GNOME_VERSION=	3.12.2

SHARED_LIBS +=  gck-1                1.0      # 0.0
SHARED_LIBS +=  gcr-base-3           2.0      # 1.0
SHARED_LIBS +=  gcr-ui-3             2.0      # 1.0
SHARED_LIBS +=  gcr-3                2.0      # 1.0

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error graphite2 gthread-2.0 gtk-3 harfbuzz
WANTLIB += m p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs xcb xcb-render xcb-shm
WANTLIB += z

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

MODGNOME_TOOLS += desktop-file-utils gobject-introspection vala
MODGNOME_TOOLS += gtk-update-icon-cache shared-mime-info

LIB_DEPENDS=	x11/gtk+3 \
		security/libgcrypt \
		security/p11-kit

BUILD_DEPENDS=	security/gnupg
RUN_DEPENDS=	security/gnupg

# Need xsltproc in order to build with gobject introspection
BUILD_DEPENDS += textproc/libxslt

# regression tests call 'env python'
MODULES +=		lang/python
TEST_DEPENDS +=		${MODPY_RUN_DEPENDS}
MODPY_RUNDEP=		No
MODPY_BUILDDEP=		No
pre-test:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

post-install:
	grep -q '/libgcr-3.so' ${WRKSRC}/Makefile || exit 1
	cd ${PREFIX}/lib && \
		ln -s libgcr-ui-3.so.${LIBgcr-ui-3_VERSION} libgcr-3.so.${LIBgcr-ui-3_VERSION}

.include <bsd.port.mk>
