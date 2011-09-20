# $OpenBSD: Makefile,v 1.63 2011/09/20 21:10:00 jasper Exp $

COMMENT=	password agent for the GNOME project

GNOME_PROJECT=	gnome-keyring
GNOME_VERSION=	3.1.92

REVISION=	0

SHARED_LIBS +=  gck-1                0.0      # 0.0
SHARED_LIBS +=  gcr-3                1.0      # 1.0

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += cairo-gobject dbus-1 drm expat fontconfig freetype
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error gthread-2.0 gtk-3 m p11-kit pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs xcb xcb-render xcb-shm z

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

MODGNOME_DESKTOP_FILE=	Yes

# only required during build for parsing ASN.1 files
BUILD_DEPENDS=	security/libtasn1

RUN_DEPENDS=	misc/shared-mime-info

LIB_DEPENDS=	security/libgcrypt \
		x11/dbus \
		x11/gtk+3 \
		security/p11-kit>=0.6

CONFIGURE_ARGS=	--with-root-certs=/etc/ssl \
		--disable-pam \
		--disable-selinux \
		--disable-tests \
		--without-libcap-ng
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=	configdir=${PREFIX}/share/examples/gnome-keyring/pkcs11/modules

pre-configure:
	perl -pi -e 's,make --version,${MAKE_PROGRAM} --version,' \
		${WRKSRC}/configure

post-install:
	# https://bugzilla.gnome.org/show_bug.cgi?id=659402
	chmod 0555 ${PREFIX}/bin/gnome-keyring-daemon

	mv ${WRKINST}/etc/xdg ${PREFIX}/share/examples/gnome-keyring

.include <bsd.port.mk>
