# $OpenBSD: Makefile,v 1.90 2013/03/02 14:03:34 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	password agent for the GNOME project

GNOME_PROJECT=	gnome-keyring
GNOME_VERSION=	3.6.3

HOMEPAGE=	https://live.gnome.org/GnomeKeyring

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gck-1 gcr-3 gcr-base-3 gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gpg-error
WANTLIB += gthread-2.0 gtk-3 harfbuzz icudata icule icuuc m p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs xcb xcb-render xcb-shm z

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
