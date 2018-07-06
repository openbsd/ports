# $OpenBSD: Makefile,v 1.130 2018/07/06 06:04:45 espie Exp $

COMMENT=		password agent for the GNOME project

GNOME_PROJECT=		gnome-keyring
GNOME_VERSION=		3.28.2
REVISION=		0

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi c cairo
WANTLIB += cairo-gobject dbus-1 epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gck-1 gcr-base-3 gcr-ui-3 gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gpg-error
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz iconv intl m p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread xcb xcb-render xcb-shm z

MODULES=		devel/dconf \
			x11/gnome

MODGNOME_TOOLS=		docbook

LIB_DEPENDS=		x11/gnome/gcr>=3.28.0

# GnuPG2 gnome-keyring agent
RUN_DEPENDS +=		security/pinentry,-gnome3,

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--disable-pam \
			--disable-valgrind

FAKE_FLAGS=		configdir=${PREFIX}/share/examples/gnome-keyring/pkcs11/modules

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-keyring
	mv ${WRKINST}/etc/xdg ${PREFIX}/share/examples/gnome-keyring
	rm ${PREFIX}/lib/gnome-keyring/devel/*.{a,la}
	rm ${PREFIX}/lib/pkcs11/*.{a,la}

# regression tests call 'env python'
MODULES +=		lang/python
TEST_DEPENDS +=		${MODPY_RUN_DEPENDS}
MODPY_RUNDEP=		No
MODPY_BUILDDEP=		No
pre-test:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
