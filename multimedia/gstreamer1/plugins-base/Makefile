# $OpenBSD: Makefile,v 1.64 2018/05/19 06:21:25 ajacoutot Exp $

COMMENT=		base elements for GStreamer

DISTNAME=		gst-plugins-base-${V}
PKGNAME=		${GST_PKGNAME_PREFIX}-plugins-base-${V}

SHARED_LIBS +=  gsttag-1.0           4.0      # 1401.0
SHARED_LIBS +=  gstaudio-1.0         4.0      # 1401.0
SHARED_LIBS +=  gstfft-1.0           4.0      # 1401.0
SHARED_LIBS +=  gstvideo-1.0         4.0      # 1401.0
SHARED_LIBS +=  gstapp-1.0           4.0      # 1401.0
SHARED_LIBS +=  gstrtp-1.0           4.0      # 1401.0
SHARED_LIBS +=  gstsdp-1.0           4.0      # 1401.0
SHARED_LIBS +=  gstrtsp-1.0          4.0      # 1401.0
SHARED_LIBS +=  gstpbutils-1.0       4.0      # 1401.0
SHARED_LIBS +=  gstriff-1.0          4.0      # 1401.0
SHARED_LIBS +=  gstallocators-1.0    3.0      # 1401.0
SHARED_LIBS +=  gstgl-1.0            3.0      # 1401.0

MASTER_SITES=		${MASTER_SITE_GST:=gst-plugins-base/}

WANTLIB += EGL GL GLESv2 X11 X11-xcb Xau Xdamage Xdmcp Xext Xfixes
WANTLIB += Xrender Xv Xxf86vm c cairo cdda_interface cdda_paranoia
WANTLIB += drm expat ffi fontconfig freetype gbm gio-2.0 glapi
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gstbase-1.0
WANTLIB += gstcontroller-1.0 gstnet-1.0 gstreamer-1.0 gthread-2.0
WANTLIB += harfbuzz iconv intl jpeg m ogg opus orc-0.4 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += sndio theoradec theoraenc vorbis vorbisenc vorbisidec
WANTLIB += xcb xcb-dri2 xcb-glx xcb-render xcb-shm xcb-xfixes
WANTLIB += z fribidi

BUILD_DEPENDS=		devel/iso-codes \
			devel/gobject-introspection

RUN_DEPENDS=		devel/iso-codes

# needed for ${WRKSRC}/tests/
BUILD_DEPENDS +=	x11/gtk+3

LIB_DEPENDS=		${P}/core=${V} \
			audio/cdparanoia \
			audio/libvorbis \
			audio/opus \
			audio/tremor \
			devel/orc \
			devel/pango \
			multimedia/libtheora

# needed for the gio plugin
RUN_DEPENDS +=		x11/gnome/gvfs

CONFIGURE_ARGS=		--enable-sndio \
			--disable-alsa \
			--disable-libvisual #XXX libvisual needs to be ported

### SNDIO ###
CONFIGURE_STYLE +=	gnu
AUTOMAKE_VERSION=	1.14
BUILD_DEPENDS +=	${MODGNU_AUTOMAKE_DEPENDS} \
			${MODGNU_AUTOCONF_DEPENDS}
BUILD_DEPENDS +=	devel/libtool # libtoolize(1)
MODULES +=		textproc/intltool # share/aclocal/intltool.m4, autopoint

post-extract:
	cp -R ${FILESDIR} ${WRKSRC}/ext/sndio

pre-configure:
# https://bugzilla.gnome.org/show_bug.cgi?id=726571
# XXX check if still needed at next release
	sed -i 's,--libtool="\$$(top_builddir)/libtool",--libtool="\$${LIBTOOL}",g' \
		${WRKSRC}/gst-libs/gst/*/Makefile.am

# autopoint(1) uses HOME, make sure it exists
	cd ${WRKSRC} && HOME=${WRKDIST} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOMAKE=automake-${AUTOMAKE_VERSION} \
		NOCONFIGURE="true" \
		./autogen.sh ${CONFIGURE_ENV} ${CONFIGURE_ARGS}
### END SNDIO ###
	sed -i 's,/dev/cdrom1,/dev/rcd1c,g' \
		${WRKSRC}/tests/check/libs/audiocdsrc.c
	sed -i 's,/dev/cdrom,/dev/rcd0c,g' \
		${WRKSRC}/docs/plugins/gst-plugins-base-plugins.args \
		${WRKSRC}/gst-libs/gst/audio/gstaudiocdsrc.c \
		${WRKSRC}/ext/cdparanoia/gstcdparanoiasrc.c \
		${WRKSRC}/tests/check/libs/audiocdsrc.c

.include <bsd.port.mk>
