# $OpenBSD: Makefile,v 1.10 2012/10/24 07:04:03 ajacoutot Exp $

COMMENT=	library for bits of crypto UI and parsing

GNOME_PROJECT=	gcr
GNOME_VERSION=	3.6.1
REVISION=	0

SHARED_LIBS +=  gck-1                     1.0 # 0.0
SHARED_LIBS +=  gcr-3                     2.0 # 1.0
SHARED_LIBS +=  gcr-base-3                1.0 # 1.0

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error gthread-2.0 gtk-3 harfbuzz icudata
WANTLIB += icule icuuc m p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-shm z

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

MODGNOME_TOOLS=		goi
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

# XXX
# In function `_gck_stringize_rv': gck/gck-misc.c:132: multiple definition of `SECMEM_pool_data_v1_0'
# gck/tests/test-gck-attributes.c:34: first defined here
USE_LIBTOOL=	gnu

# asn1Parser(1) is used by configure for parsing ASN.1 files
BUILD_DEPENDS += security/libtasn1

RUN_DEPENDS=	misc/shared-mime-info

LIB_DEPENDS=	x11/gtk+3 \
		security/libgcrypt \
		security/p11-kit

CONFIGURE_ARGS=	--disable-update-mime

pre-configure:
	find ${WRKSRC} -name Makefile.in | xargs \
		perl -pi -e 's|sed -i|perl -pi|g'

.include <bsd.port.mk>
