# $OpenBSD: Makefile,v 1.71 2012/03/29 06:51:38 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	password agent for the GNOME project

GNOME_PROJECT=	gnome-keyring
GNOME_VERSION=	3.4.0

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += cairo-gobject dbus-1 drm expat ffi fontconfig freetype
WANTLIB += gck-1 gcr-3 gcr-base-3 gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gpg-error
WANTLIB += gthread-2.0 gtk-3 m p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += stdc++ xcb xcb-render xcb-shm z

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

# only required during build for parsing ASN.1 files
BUILD_DEPENDS=	security/libtasn1

LIB_DEPENDS=	x11/gnome/gcr

LIBTOOL_ARGS=	--tag=disable-static

CONFIGURE_ARGS=	--disable-static \
		--with-ca-certificates=/etc/ssl \
		--disable-pam \
		--disable-selinux \
		--without-libcap-ng

FAKE_FLAGS=	configdir=${PREFIX}/share/examples/gnome-keyring/pkcs11/modules

post-install:
	mv ${WRKINST}/etc/xdg ${PREFIX}/share/examples/gnome-keyring

.include <bsd.port.mk>
