# $OpenBSD: Makefile,v 1.61 2014/04/08 17:25:05 ajacoutot Exp $

COMMENT=		base elements for GStreamer

V=			0.10.36
DISTNAME=		gst-plugins-base-${V}
PKGNAME=		gstreamer-plugins-base-${V}
REVISION=		11

SHARED_LIBS +=  gstinterfaces-0.10   2.6      # .25.0
SHARED_LIBS +=  gsttag-0.10          2.6      # .25.0
SHARED_LIBS +=  gstfft-0.10          2.6      # .25.0
SHARED_LIBS +=  gstnetbuffer-0.10    2.6      # .25.0
SHARED_LIBS +=  gstpbutils-0.10      2.6      # .25.0
SHARED_LIBS +=  gstrtp-0.10          2.6      # .25.0
SHARED_LIBS +=  gstsdp-0.10          2.6      # .25.0
SHARED_LIBS +=  gstvideo-0.10        2.6      # .25.0
SHARED_LIBS +=  gstapp-0.10          2.6      # .25.0
SHARED_LIBS +=  gstaudio-0.10        2.6      # .25.0
SHARED_LIBS +=  gstcdda-0.10         2.6      # .25.0
SHARED_LIBS +=  gstriff-0.10         2.6      # .25.0
SHARED_LIBS +=  gstrtsp-0.10         2.6      # .25.0

WANTLIB += ICE SM X11 Xext Xrender Xv c cairo cdda_interface cdda_paranoia
WANTLIB += expat ffi fontconfig freetype gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gstbase-0.10 gstcontroller-0.10
WANTLIB += gstdataprotocol-0.10 gstreamer-0.10 gthread-2.0 harfbuzz
WANTLIB += m ogg orc-0.4 orc-test-0.4 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += theoradec theoraenc vorbis vorbisenc vorbisidec xcb
WANTLIB += xcb-render xcb-shm xml2 z

MASTER_SITES=		${MASTER_SITE_GST:=gst-plugins-base/}

BUILD_DEPENDS=		devel/iso-codes
RUN_DEPENDS=		devel/iso-codes

# needed for ${WRKSRC}/tests/
BUILD_DEPENDS +=	x11/gtk+2

LIB_DEPENDS=		${P}/core \
			audio/cdparanoia \
			audio/libvorbis \
			audio/tremor \
			devel/orc \
			devel/pango \
			multimedia/libtheora

# needed for the gio plugin
RUN_DEPENDS +=		x11/gnome/gvfs

# XXX libvisual needs to be ported
CONFIGURE_ARGS=		--disable-libvisual \
			--disable-gnome_vfs

pre-configure:
	perl -pi -e 's,/dev/cdrom1,/dev/rcd1c,g' \
		${WRKSRC}/tests/check/libs/cddabasesrc.c
	perl -pi -e 's,/dev/cdrom,/dev/rcd0c,g' \
		${WRKSRC}/docs/plugins/gst-plugins-base-plugins.args \
		${WRKSRC}/ext/cdparanoia/gstcdparanoiasrc.c \
		${WRKSRC}/gst-libs/gst/cdda/gstcddabasesrc.c \
		${WRKSRC}/tests/check/libs/cddabasesrc.c

# https://bugzilla.gnome.org/show_bug.cgi?id=726571
# XXX check if still needed at next release
.for i in pbutils audio app video fft cdda rtsp sdp riff tag interfaces rtp netbuffer
	perl -pi -e 's,--libtool="\$$\(top_builddir\)/libtool",--libtool="\$${LIBTOOL}",g' \
		${WRKSRC}/gst-libs/gst/$i/Makefile.in
.endfor

.include <bsd.port.mk>
