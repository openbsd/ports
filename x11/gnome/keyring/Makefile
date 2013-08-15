# $OpenBSD: Makefile,v 1.97 2013/08/15 14:52:22 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	password agent for the GNOME project

GNOME_PROJECT=	gnome-keyring
GNOME_VERSION=	3.8.2
REVISION=	2

HOMEPAGE=	https://live.gnome.org/GnomeKeyring

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject dbus-1 expat ffi fontconfig
WANTLIB += freetype gck-1 gcr-3 gcr-base-3 gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gpg-error
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz
WANTLIB += m p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs stdc++ xcb
WANTLIB += xcb-render xcb-shm z

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

# asn1Parser(1) is used by configure for parsing ASN.1 files
BUILD_DEPENDS += security/libtasn1

LIB_DEPENDS=	x11/gnome/gcr

LIBTOOL_ARGS=	--tag=disable-static

CONFIGURE_ARGS=	--disable-static \
		--disable-pam

FAKE_FLAGS=	configdir=${PREFIX}/share/examples/gnome-keyring/pkcs11/modules

# XXX push a proper fix upstream
BUILD_DEPENDS += textproc/gsed
pre-configure:
	perl -pi -e 's,sed -i,gsed -i,g' \
		${WRKSRC}/pkcs11/gnome2-store/tests/Makefile.in \
		${WRKSRC}/pkcs11/xdg-store/Makefile.in \
		${WRKSRC}/pkcs11/ssh-store/tests/Makefile.in \
		${WRKSRC}/pkcs11/gkm/tests/Makefile.in \
		${WRKSRC}/daemon/Makefile.in \
		${WRKSRC}/egg/tests/Makefile.in \
		${WRKSRC}/egg/Makefile.in \
		${WRKSRC}/Makefile.decl

post-install:
	mv ${WRKINST}/etc/xdg ${PREFIX}/share/examples/gnome-keyring
	rm ${PREFIX}/lib/gnome-keyring/devel/*.{a,la}
	rm ${PREFIX}/lib/pkcs11/*.{a,la}

.include <bsd.port.mk>
