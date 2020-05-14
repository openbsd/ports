# $OpenBSD: Makefile,v 1.135 2020/05/14 15:35:20 ajacoutot Exp $

# XXX should be a RUN_DEPENDS of x11/gnome/{libgnome-keyring,libsecret} but that
# would create dependency loops:                                                
# libsecret -> gnome-keyring -> pinentry -> libsecret                           
# libsecret -> gnome-keyring -> gcr -> gnupg2 -> pinentry -> gcr                

COMMENT=		password agent for the GNOME project

GNOME_PROJECT=		gnome-keyring
GNOME_VERSION=		3.36.0

# GPLv2/LGPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 c cairo cairo-gobject
WANTLIB += epoxy expat ffi fontconfig freetype fribidi gck-1 gcr-base-3
WANTLIB += gcr-ui-3 gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gpg-error graphite2 gtk-3 harfbuzz
WANTLIB += iconv intl m p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread xcb xcb-render xcb-shm z

MODULES=		devel/dconf \
			x11/gnome

MODGNOME_TOOLS=		docbook

LIB_DEPENDS=		x11/gnome/gcr

# GnuPG2 gnome-keyring agent
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
pre-test:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
