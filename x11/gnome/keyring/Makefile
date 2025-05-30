# XXX should be a RUN_DEPENDS of x11/gnome/libsecret but that would create
# dependency loops:                                                
# libsecret -> gnome-keyring -> pinentry -> libsecret                           
# libsecret -> gnome-keyring -> gcr -> gnupg -> pinentry -> gcr                

COMMENT=		password agent for the GNOME project

GNOME_PROJECT=		gnome-keyring
GNOME_VERSION=		48.0

# GPLv2/LGPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c gck-1 gcr-base-3 gcrypt gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 intl

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		docbook

LIB_DEPENDS=		x11/gnome/gcr

# GnuPG gnome-keyring agent
RUN_DEPENDS +=		security/pinentry,-gnome3,

CONFIGURE_ARGS=		-Dselinux=disabled \
			-Dsystemd=disabled \
			-Dpam=false

# XXX x11/gnome/gcr4 should be used to provide the ssh-agent functionality;
# however it requires systemctl to export SSH_AUTH_SOCK and activate
# ssh-agent.service and gcr-ssh-agent.socket
# https://gitlab.gnome.org/GNOME/gcr/-/commit/b12cc639949c4b548d84625b292a2aff1faaf195
# https://gitlab.gnome.org/GNOME/gnome-keyring/-/commit/25c5a1982467802fa12c6852b03c57924553ba73
# https://gitlab.gnome.org/GNOME/gcr/-/issues/55
# https://gitlab.gnome.org/GNOME/gcr/-/merge_requests/137
# https://gitlab.gnome.org/GNOME/gnome-build-meta/-/issues/770
CONFIGURE_ARGS +=	-Dssh-agent=true

DEBUG_PACKAGES=		${BUILD_PACKAGES}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-keyring
	mv ${WRKINST}/etc/xdg ${PREFIX}/share/examples/gnome-keyring

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
