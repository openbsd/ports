# $OpenBSD: Makefile,v 1.4 2012/04/24 14:00:05 ajacoutot Exp $

COMMENT=	library for bits of crypto UI and parsing

GNOME_PROJECT=	gcr
GNOME_VERSION=	3.4.1

SHARED_LIBS +=  gck-1                     1.0 # 0.0
SHARED_LIBS +=  gcr-3                     2.0 # 1.0
SHARED_LIBS +=  gcr-base-3                0.0 # 1.0

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo cairo-gobject expat
WANTLIB += ffi fontconfig freetype gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gpg-error
WANTLIB += gthread-2.0 gtk-3 m p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z

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

# only required during build for parsing ASN.1 files
BUILD_DEPENDS += security/libtasn1

RUN_DEPENDS=	misc/shared-mime-info

LIB_DEPENDS=	x11/gtk+3 \
		security/libgcrypt \
		security/p11-kit

CONFIGURE_ARGS=	--disable-update-mime

pre-configure:
	find ${WRKSRC} -name Makefile.in | xargs \
		perl -pi -e 's|sed -i -e|perl -pi -e|g;' \
			 -e 's|sed -i|perl -pi -e|g'

.include <bsd.port.mk>
