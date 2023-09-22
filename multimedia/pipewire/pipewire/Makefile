COMMENT=		server and user space API for multimedia pipelines

PW_PROJECT=		pipewire
PW_VERSION=		0.3.80

SHARED_LIBS += pipewire-0.3              0.0 # 0.357.0

CATEGORIES=		audio

WANTLIB += X11 Xfixes c canberra curses dbus-1 epoll-shim glib-2.0
WANTLIB += gobject-2.0 gstallocators-1.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstreamer-1.0 gstvideo-1.0 intl m opus pthread readline
WANTLIB += sndfile

MODULES=		devel/meson \
			lang/python

MODPY_RUNDEP=		No

BUILD_DEPENDS=		devel/gettext,-tools \
			textproc/py-docutils${MODPY_FLAVOR}

LIB_DEPENDS=		audio/libcanberra \
			audio/libsndfile \
			devel/epoll-shim \
			multimedia/gstreamer1/plugins-base \
			x11/dbus

CONFIGURE_ARGS=		-Dsystemd=disabled \
			-Dsystemd-user-service=disabled \
			-Dudev=disabled \
			-Dlegacy-rtkit=false \
			-Dalsa=disabled \
			-Dflatpak=disabled

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

# needs alsa
CONFIGURE_ARGS +=	-Dsession-managers=[]

# XXX to be revisited; useful to replace Jack (audio/jack)
# Jack2 client
CONFIGURE_ARGS +=	-Djack=disabled
# Jack3 server
CONFIGURE_ARGS +=	-Dpipewire-jack=disabled

# XXX to be revisited; useful to replace the pulseaudio daemon
# (audio/pulseaudio) but it seems to depend on systemd activation for now
CONFIGURE_ARGS +=	-Dlibpulse=disabled

# libintl
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
