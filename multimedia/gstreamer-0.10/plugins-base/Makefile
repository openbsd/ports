# $OpenBSD: Makefile,v 1.49 2012/04/28 09:03:45 ajacoutot Exp $

COMMENT-main =		base elements for GStreamer
COMMENT-cdda =		cd paranoia element for GStreamer (plugins-base)

V =			0.10.36
DISTNAME =		gst-plugins-base-${V}

PKGNAME-main =		gstreamer-plugins-base-${V}
REVISION-main =		0
PKGNAME-cdda =		gstreamer-cdda-${V}

MULTI_PACKAGES =	-main -cdda

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

MASTER_SITES =		${MASTER_SITE_GST:=gst-plugins-base/}
MODULES =		devel/gettext

.for i in ${MULTI_PACKAGES}
REGRESS_DEPENDS +=	${BASE_PKGPATH},${i}
.endfor

# needed for tests/
BUILD_DEPENDS =		x11/gtk+2

WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 xml2
WANTLIB += z m pcre gstreamer-0.10 ffi
RUN_DEPENDS =		${BUILD_PKGPATH}
LIB_DEPENDS =		${P}/core>=0.10.36

WANTLIB-main += ${WANTLIB}
WANTLIB-main += GL ICE SM X11 Xau Xdamage Xdmcp Xext Xfixes Xrender
WANTLIB-main += Xv Xxf86vm c cairo drm expat fontconfig freetype gio-2.0
WANTLIB-main += gstbase-0.10 gstcontroller-0.10 gstdataprotocol-0.10
WANTLIB-main += ogg orc-0.4 orc-test-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB-main += pixman-1 png pthread pthread-stubs stdc++ theoradec
WANTLIB-main += theoraenc vorbis vorbisenc vorbisidec>=3 xcb xcb-render
WANTLIB-main += xcb-shm
LIB_DEPENDS-main = 	${LIB_DEPENDS} \
			devel/orc>=0.4.11 \
			audio/libvorbis \
			devel/pango \
			multimedia/libtheora \
			audio/tremor>=20120410
RUN_DEPENDS-main +=	${MODGETTEXT_RUN_DEPENDS}
# needed for the gio plugin
RUN_DEPENDS-main +=	x11/gnome/gvfs

WANTLIB-cdda += ${WANTLIB}
WANTLIB-cdda += gstbase-0.10 gsttag-0.10 cdda_interface cdda_paranoia
LIB_DEPENDS-cdda = 	${LIB_DEPENDS} \
			${BUILD_PKGPATH} \
			audio/cdparanoia

CONFIGURE_ARGS +=	--disable-libvisual \
			--disable-alsa \
			--disable-gst_v4l \
			--disable-gnome_vfs \
			--enable-orc
CONFIGURE_ENV +=	ac_cv_path_PYTHON=""
USE_GROFF =		Yes
USE_LIBTOOL =		Yes

.include <bsd.port.mk>
