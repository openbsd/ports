# $OpenBSD: Makefile,v 1.140 2021/12/22 15:56:30 ajacoutot Exp $

# XXX GNOME keyring ssh-agent segfaults with llvm >=13.0.0
CFLAGS +=		-O0

# XXX should be a RUN_DEPENDS of x11/gnome/{libgnome-keyring,libsecret} but that
# would create dependency loops:                                                
# libsecret -> gnome-keyring -> pinentry -> libsecret                           
# libsecret -> gnome-keyring -> gcr -> gnupg -> pinentry -> gcr                

COMMENT=		password agent for the GNOME project

GNOME_PROJECT=		gnome-keyring
GNOME_VERSION=		40.0
REVISION=		0

# GPLv2/LGPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += c cairo cairo-gobject epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gck-1 gcr-base-3 gcr-ui-3 gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gpg-error
WANTLIB += graphite2 gtk-3 harfbuzz iconv intl jpeg m p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png xcb xcb-render xcb-shm z

MODULES=		devel/dconf \
			x11/gnome

MODGNOME_TOOLS=		docbook

LIB_DEPENDS=		x11/gnome/gcr

# GnuPG gnome-keyring agent
RUN_DEPENDS +=		security/pinentry,-gnome3,

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--disable-pam \
			--disable-valgrind

DEBUG_PACKAGES=		${BUILD_PACKAGES}

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
MODPY_ADJ_FILES=	build/tap-driver
# couldn't connect to dbus session bus: Cannot autolaunch D-Bus without X11 $DISPLAY
TEST_IS_INTERACTIVE=	x11

pre-test:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
