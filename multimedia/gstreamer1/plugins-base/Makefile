# $OpenBSD: Makefile,v 1.14 2013/07/13 06:49:12 ajacoutot Exp $

COMMENT=		base elements for GStreamer

V=			1.0.8
DISTNAME=		gst-plugins-base-${V}
PKGNAME=		${GST_PKGNAME_PREFIX}-plugins-base-${V}

SHARED_LIBS +=  gstapp-1.0                0.0 # 6.0
SHARED_LIBS +=  gstaudio-1.0              0.0 # 6.0
SHARED_LIBS +=  gstfft-1.0                0.0 # 6.0
SHARED_LIBS +=  gstpbutils-1.0            0.0 # 6.0
SHARED_LIBS +=  gstriff-1.0               0.0 # 6.0
SHARED_LIBS +=  gstrtp-1.0                0.0 # 6.0
SHARED_LIBS +=  gstrtsp-1.0               0.0 # 6.0
SHARED_LIBS +=  gstsdp-1.0                0.0 # 6.0
SHARED_LIBS +=  gsttag-1.0                0.0 # 6.0
SHARED_LIBS +=  gstvideo-1.0              0.1 # 6.0

WANTLIB += ICE SM X11 Xext Xrender Xv c cairo cdda_interface cdda_paranoia
WANTLIB += expat ffi fontconfig freetype gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gstbase-1.0 gstreamer-1.0 gthread-2.0
WANTLIB += harfbuzz m ogg orc-0.4 orc-test-0.4
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs sndio theoradec theoraenc
WANTLIB += vorbis vorbisenc vorbisidec xcb xcb-render xcb-shm
WANTLIB += z

MASTER_SITES=		${MASTER_SITE_GST:=gst-plugins-base/}

# needed for ${WRKSRC}/tests/
BUILD_DEPENDS=		x11/gtk+2

LIB_DEPENDS=	 	${P}/core>=1.0.6 \
			audio/cdparanoia \
			audio/libvorbis \
			audio/tremor \
			devel/orc \
			devel/pango \
			multimedia/libtheora

# needed for the gio plugin
RUN_DEPENDS +=		x11/gnome/gvfs

CONFIGURE_ARGS=		--enable-sndio \
			--disable-libvisual # XXX libvisual needs to be ported

### SNDIO ###
CONFIGURE_STYLE +=	gnu
AUTOMAKE_VERSION=	1.12
BUILD_DEPENDS +=	${MODGNU_AUTOMAKE_DEPENDS} \
			${MODGNU_AUTOCONF_DEPENDS}
BUILD_DEPENDS +=	devel/libtool # needs needs libtoolize

post-extract:
	cp -R ${FILESDIR} ${WRKSRC}/ext/sndio

# autopoint(1) uses HOME, make sure it exists
pre-configure:
	cd ${WRKSRC} && HOME=${WRKDIST} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOMAKE=automake-${AUTOMAKE_VERSION} \
		NOCONFIGURE="true" \
		./autogen.sh ${CONFIGURE_ENV} ${CONFIGURE_ARGS}
### END SNDIO ###
	perl -pi -e 's,/dev/cdrom1,/dev/rcd1c,g' \
		${WRKSRC}/tests/check/libs/audiocdsrc.c
	perl -pi -e 's,/dev/cdrom,/dev/rcd0c,g' \
		${WRKSRC}/docs/plugins/gst-plugins-base-plugins.args \
		${WRKSRC}/gst-libs/gst/audio/gstaudiocdsrc.c \
		${WRKSRC}/ext/cdparanoia/gstcdparanoiasrc.c \
		${WRKSRC}/tests/check/libs/audiocdsrc.c

.include <bsd.port.mk>
