COMMENT-main=		low-level multimedia framework - client & server
COMMENT-libs=		low-level multimedia framework - libraries

PW_PROJECT=		pipewire
PW_VERSION=		1.0.4
PKGNAME-libs=		lib${PW_PROJECT}-${PW_VERSION}

SHARED_LIBS += pipewire-0.3              0.1 # 0.1004.0

MULTI_PACKAGES=		-main -libs

WANTLIB-main += X11 Xfixes c canberra curses dbus-1 epoll-shim glib-2.0
WANTLIB-main += gobject-2.0 gstallocators-1.0 gstaudio-1.0 gstbase-1.0
WANTLIB-main += gstreamer-1.0 gstvideo-1.0 m opus pthread readline
WANTLIB-main += pipewire-0.3 sndfile

WANTLIB-libs += intl pthread

MODULES=		devel/meson \
			lang/python

MODPY_RUNDEP=		No

BUILD_DEPENDS=		devel/doxygen \
			devel/gettext,-tools \
			textproc/py-docutils${MODPY_FLAVOR}

LIB_DEPENDS-main=	${BASE_PKGPATH},-libs \
			audio/libcanberra \
			audio/libsndfile \
			devel/epoll-shim \
			multimedia/gstreamer1/plugins-base \
			x11/dbus

LIB_DEPENDS-libs=	devel/gettext,-runtime

# needs a pipewire-session-manager; see patch-src_daemon_pipewire_conf_in
RUN_DEPENDS-main +=	multimedia/pipewire/wireplumber

# libintl
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=		-Dman=enabled \
			-Dsession-managers=[] \
			-Dsystemd=disabled \
			-Dsystemd-user-service=disabled \
			-Dudev=disabled \
			-Dlegacy-rtkit=false \
			-Dalsa=disabled \
			-Dflatpak=disabled \
			-Dselinux=disabled

# until supported and/or proven useful
CONFIGURE_ARGS +=	-Dpipewire-alsa=disabled \
			-Dbluez5=disabled \
			-Dlibcamera=disabled \
			-Droc=disabled \
			-Decho-cancel-webrtc=disabled \
			-Draop=disabled \
			-Dlv2=disabled \
			-Davb=disabled \
			-Dlibffado=disabled \
			-Dlibmysofa=disabled \
			-Davahi=disabled

# PAM limits.d file
CONFIGURE_ARGS +=	-Drlimits-install=false

# only useful for examples which we don't install
CONFIGURE_ARGS +=	-Dsdl2=disabled

# only usesul for bluez5 which we disable above
CONFIGURE_ARGS +=	-Dlibusb=disabled

# needs udev
CONFIGURE_ARGS +=	-Dv4l2=disabled

# XXX needs O_TMPFILE
CONFIGURE_ARGS +=	-Dpipewire-v4l2=disabled

# XXX to be revisited; useful to replace Jack (audio/jack)
# Jack2 client
CONFIGURE_ARGS +=	-Djack=disabled
# Jack3 server
CONFIGURE_ARGS +=	-Dpipewire-jack=disabled

# XXX to be revisited; useful to replace the pulseaudio daemon
# (audio/pulseaudio) but it seems to depend on systemd activation for now
CONFIGURE_ARGS +=	-Dlibpulse=disabled

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/daemon/pipewire.conf.in

.include <bsd.port.mk>
