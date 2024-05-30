COMMENT=		base elements for GStreamer

DISTNAME=		gst-plugins-base-${V}
PKGNAME=		${GST_PKGNAME_PREFIX}-plugins-base-${V}

SHARED_LIBS += gsttag-1.0                7.2 # 0.2404.0
SHARED_LIBS += gstfft-1.0                7.2 # 0.2404.0
SHARED_LIBS += gstvideo-1.0              7.2 # 0.2404.0
SHARED_LIBS += gstaudio-1.0              7.2 # 0.2404.0
SHARED_LIBS += gstrtp-1.0                7.2 # 0.2404.0
SHARED_LIBS += gstpbutils-1.0            7.2 # 0.2404.0
SHARED_LIBS += gstsdp-1.0                7.2 # 0.2404.0
SHARED_LIBS += gstrtsp-1.0               7.2 # 0.2404.0
SHARED_LIBS += gstriff-1.0               7.2 # 0.2404.0
SHARED_LIBS += gstapp-1.0                7.2 # 0.2404.0
SHARED_LIBS += gstallocators-1.0         6.2 # 0.2404.0
SHARED_LIBS += gstgl-1.0                 6.2 # 0.2404.0

SITES=			${SITE_GST:=gst-plugins-base/}

WANTLIB += EGL GL X11 X11-xcb Xext Xi Xv c cairo cdda_interface
WANTLIB += cdda_paranoia drm gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphene-1.0 gstbase-1.0 gstcontroller-1.0 gstnet-1.0
WANTLIB += gstreamer-1.0 intl jpeg m ogg opus orc-0.4 pango-1.0
WANTLIB += pangocairo-1.0 png sndio theoradec theoraenc vorbis
WANTLIB += vorbisenc wayland-client wayland-cursor wayland-egl
WANTLIB += xcb z

BUILD_DEPENDS=		devel/iso-codes \
			devel/gobject-introspection \
			wayland/wayland-protocols

RUN_DEPENDS=		devel/iso-codes

LIB_DEPENDS=		${P}/core=${V} \
			audio/cdparanoia \
			audio/libvorbis \
			audio/opus \
			devel/orc \
			devel/pango \
			graphics/graphene \
			graphics/jpeg \
			multimedia/libtheora \
			wayland/wayland

# optional dependency for the the gio plugin;
# disabled because of cyclic build dependency:
# x11/gtk+4 -> gst-plugins-{bad,base} -> gvfs -> gtk+4,-guic -> x11/gtk+4
#RUN_DEPENDS +=		x11/gnome/gvfs

CONFIGURE_ARGS=		-Dalsa=disabled

#XXX libvisual needs to be ported
CONFIGURE_ARGS +=	-Dlibvisual=disabled

# XXX needs vorbisidec
CONFIGURE_ARGS +=	-Dtremor=disabled

DEBUG_PACKAGES=		${BUILD_PACKAGES}

post-extract:
	cp -R ${FILESDIR} ${WRKSRC}/ext/sndio

.include <bsd.port.mk>
