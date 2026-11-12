# XXX should be a RUN_DEPENDS of x11/gnome/libsecret but that would create
# dependency loops:
# libsecret -> gnome-keyring -> pinentry -> libsecret
# libsecret -> gnome-keyring -> gcr -> gnupg -> pinentry -> gcr

COMMENT=		password agent for the GNOME project

GNOME_PROJECT=		gnome-keyring
GNOME_VERSION=		51.1
REVISION=		0

# GPLv2/LGPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c gck-1 gcr-base-3 gcrypt gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 intl

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		docbook

LIB_DEPENDS=		x11/gnome/gcr

# SSH agent (convenience dependency: feature was moved out of gnome-keyring)
RUN_DEPENDS +=		x11/gnome/gcr4

# GnuPG gnome-keyring agent
RUN_DEPENDS +=		security/pinentry,-gnome3,

CONFIGURE_ARGS=		-Dselinux=disabled \
			-Dsystemd=disabled \
			-Dlibcap-ng=disabled

# pam_keyring is used to automatically unlock the "login" keyring if the user
# password and the keyring passwords are the same; PAM stashes and passes the
# password (pam_bsdauth does _not_ stash it, so some work would be needed);
# while "convenient", we don't want to play this game, meaning a user may need
# to enter 3 passwords at login:
# login -> "Defaut" keyring (secret storage) -> "Default" keyring (SSH agent)
CONFIGURE_ARGS +=	-Dpam=false

DEBUG_PACKAGES=		${BUILD_PACKAGES}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-keyring
	mv ${WRKINST}/etc/xdg ${PREFIX}/share/examples/gnome-keyring

# tests
MODULES +=		lang/python
MODPY_RUNDEP=		No
MODPY_BUILDDEP=		No
MODPY_ADJ_FILES=	build/tap-driver
TEST_IS_INTERACTIVE=	x11 # Cannot autolaunch D-Bus without X11 $DISPLAY

.include <bsd.port.mk>
