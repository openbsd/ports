# $OpenBSD: Makefile,v 1.89 2012/11/12 08:35:54 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	password agent for the GNOME project

GNOME_PROJECT=	gnome-keyring
GNOME_VERSION=	3.6.2

HOMEPAGE=	https://live.gnome.org/GnomeKeyring

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
WANTLIB += stdc++ xcb xcb-render xcb-shm z icuuc
WANTLIB += ICE SM atk-bridge-2.0 atspi harfbuzz icudata icule

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

# asn1Parser(1) is used by configure for parsing ASN.1 files
BUILD_DEPENDS += security/libtasn1

LIB_DEPENDS=	x11/gnome/gcr>=3.6.0

LIBTOOL_ARGS=	--tag=disable-static

CONFIGURE_ARGS=	--disable-static \
		--with-root-certs=/etc/ssl \
		--disable-pam \
		--disable-selinux \
		--without-libcap-ng

FAKE_FLAGS=	configdir=${PREFIX}/share/examples/gnome-keyring/pkcs11/modules

post-install:
	mv ${WRKINST}/etc/xdg ${PREFIX}/share/examples/gnome-keyring
	rm ${PREFIX}/lib/gnome-keyring/devel/*.{a,la}
	rm ${PREFIX}/lib/pkcs11/*.{a,la}

.include <bsd.port.mk>
