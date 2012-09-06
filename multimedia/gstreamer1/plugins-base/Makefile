# $OpenBSD: Makefile,v 1.1.1.1 2012/09/06 13:00:53 ajacoutot Exp $

COMMENT=		base elements for GStreamer

V=			0.11.93
DISTNAME=		gst-plugins-base-${V}
PKGNAME=		${GST_PKGNAME_PREFIX}-plugins-base-${V}

SHARED_LIBS +=  gstapp-1.0                0.0 # 0.0
SHARED_LIBS +=  gstaudio-1.0              0.0 # 0.0
SHARED_LIBS +=  gstfft-1.0                0.0 # 0.0
SHARED_LIBS +=  gstpbutils-1.0            0.0 # 0.0
SHARED_LIBS +=  gstriff-1.0               0.0 # 0.0
SHARED_LIBS +=  gstrtp-1.0                0.0 # 0.0
SHARED_LIBS +=  gstrtsp-1.0               0.0 # 0.0
SHARED_LIBS +=  gstsdp-1.0                0.0 # 0.0
SHARED_LIBS +=  gsttag-1.0                0.0 # 0.0
SHARED_LIBS +=  gstvideo-1.0              0.0 # 0.0

WANTLIB += GL ICE SM X11 Xau Xdamage Xdmcp Xext Xfixes Xrender
WANTLIB += Xv Xxf86vm c cairo cdda_interface cdda_paranoia drm
WANTLIB += expat ffi fontconfig freetype gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gstbase-1.0 gstreamer-1.0 gthread-2.0 m
WANTLIB += ogg orc-0.4 orc-test-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs stdc++ theoradec
WANTLIB += theoraenc vorbis vorbisenc vorbisidec xcb xcb-render
WANTLIB += xcb-shm z

MASTER_SITES=		${MASTER_SITE_GST:=gst-plugins-base/}

# needed for ${WRKSRC}/tests/
BUILD_DEPENDS=		x11/gtk+2

LIB_DEPENDS=	 	${P}/core \
			audio/cdparanoia \
			audio/libvorbis \
			audio/tremor \
			devel/orc \
			devel/pango \
			multimedia/libtheora

# needed for the gio plugin
RUN_DEPENDS +=		x11/gnome/gvfs

CONFIGURE_ARGS=		--disable-libvisual # XXX libvisual needs to be ported

pre-configure:
	perl -pi -e 's,/dev/cdrom1,/dev/rcd1c,g' \
		${WRKSRC}/tests/check/libs/audiocdsrc.c
	perl -pi -e 's,/dev/cdrom,/dev/rcd0c,g' \
		${WRKSRC}/docs/plugins/gst-plugins-base-plugins.args \
		${WRKSRC}/gst-libs/gst/audio/gstaudiocdsrc.c \
		${WRKSRC}/ext/cdparanoia/gstcdparanoiasrc.c \
		${WRKSRC}/tests/check/libs/audiocdsrc.c

.include <bsd.port.mk>
