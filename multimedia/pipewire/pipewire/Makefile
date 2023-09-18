COMMENT=		server and user space API for multimedia pipelines

PW_PROJECT=		pipewire
PW_VERSION=		0.3.80

SHARED_LIBS += pipewire-0.3              0.0 # 0.357.0

CATEGORIES=		audio

WANTLIB += X11 Xfixes avahi-client avahi-common c canberra curses
WANTLIB += dbus-1 epoll-shim glib-2.0 gobject-2.0 gstallocators-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstreamer-1.0 gstvideo-1.0
WANTLIB += intl m pthread readline sndfile

BUILD_DEPENDS=		devel/gettext,-tools

LIB_DEPENDS=		audio/libcanberra \
			audio/libsndfile \
			audio/pulseaudio \
			devel/epoll-shim \
			multimedia/gstreamer1/plugins-base \
			net/avahi,-libs

CONFIGURE_ARGS=		-Dsystemd=disabled \
			-Dsystemd-user-service=disabled \
			-Dudev=disabled \
			-Dlegacy-rtkit=false \
			-Dalsa=disabled \
			-Dflatpak=disabled \

# until proven useful
CONFIGURE_ARGS +=	-Dpipewire-alsa=disabled \
			-Dpipewire-jack=disabled \
			-Dbluez5=disabled \
			-Djack=disabled \
			-Dlibcamera=disabled \
			-Droc=disabled \
			-Decho-cancel-webrtc=disabled \
			-Draop=disabled \
			-Dlv2=disabled \
			-Davb=disabled \
			-Dlibffado=disabled

# only useful for examples which we don't install
CONFIGURE_ARGS +=	-Dsdl2=disabled

# only usesul for bluez5 which we disable above
CONFIGURE_ARGS +=	-Dlibusb=disabled

# needs udev
CONFIGURE_ARGS +=	-Dv4l2=disabled

# needs alsa
CONFIGURE_ARGS +=	-Dsession-managers=[]

# XXX needs O_TMPFILE
CONFIGURE_ARGS +=	-Dpipewire-v4l2=disabled

# XXX to be revisited; useful to replace the pulseaudio daemon but it seems to
# depend on systemd activation for now
CONFIGURE_ARGS +=	-Dlibpulse=disabled

# libintl
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
