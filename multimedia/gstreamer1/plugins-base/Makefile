# $OpenBSD: Makefile,v 1.75 2019/09/25 22:48:02 ajacoutot Exp $

COMMENT=		base elements for GStreamer

DISTNAME=		gst-plugins-base-${V}
PKGNAME=		${GST_PKGNAME_PREFIX}-plugins-base-${V}

SHARED_LIBS += gsttag-1.0                5.0 # 0.1601.0
SHARED_LIBS += gstfft-1.0                5.0 # 0.1601.0
SHARED_LIBS += gstvideo-1.0              5.0 # 0.1601.0
SHARED_LIBS += gstaudio-1.0              5.0 # 0.1601.0
SHARED_LIBS += gstrtp-1.0                5.0 # 0.1601.0
SHARED_LIBS += gstsdp-1.0                5.0 # 0.1601.0
SHARED_LIBS += gstrtsp-1.0               5.0 # 0.1601.0
SHARED_LIBS += gstpbutils-1.0            5.0 # 0.1601.0
SHARED_LIBS += gstriff-1.0               5.0 # 0.1601.0
SHARED_LIBS += gstapp-1.0                5.0 # 0.1601.0
SHARED_LIBS += gstallocators-1.0         4.0 # 0.1601.0
SHARED_LIBS += gstgl-1.0                 4.0 # 0.1601.0

MASTER_SITES=		${MASTER_SITE_GST:=gst-plugins-base/}

WANTLIB += EGL GL X11 X11-xcb Xext Xv c cairo cdda_interface cdda_paranoia
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphene-1.0
WANTLIB += gstbase-1.0 gstcontroller-1.0 gstnet-1.0 gstreamer-1.0
WANTLIB += intl jpeg m ogg opus orc-0.4 pango-1.0 pangocairo-1.0
WANTLIB += png sndio theoradec theoraenc vorbis vorbisenc xcb z

BUILD_DEPENDS=		devel/iso-codes \
			devel/gobject-introspection

RUN_DEPENDS=		devel/iso-codes

LIB_DEPENDS=		${P}/core=${V} \
			audio/cdparanoia \
			audio/libvorbis \
			audio/opus \
			devel/orc \
			devel/pango \
			graphics/graphene \
			graphics/jpeg \
			multimedia/libtheora

# needed for the gio plugin
RUN_DEPENDS +=		x11/gnome/gvfs

CONFIGURE_ARGS=		-Dalsa=disabled

#XXX libvisual needs to be ported
CONFIGURE_ARGS +=	-Dlibvisual=disabled

# XXX needs vorbisidec
CONFIGURE_ARGS +=	-Dtremor=disabled

post-extract:
	cp -R ${FILESDIR} ${WRKSRC}/ext/sndio
	sed -i 's,/dev/cdrom1,/dev/rcd1c,g' \
		${WRKSRC}/tests/check/libs/audiocdsrc.c
	sed -i 's,/dev/cdrom,/dev/rcd0c,g' \
		${WRKSRC}/docs/plugins/gst-plugins-base-plugins.args \
		${WRKSRC}/gst-libs/gst/audio/gstaudiocdsrc.c \
		${WRKSRC}/ext/cdparanoia/gstcdparanoiasrc.c \
		${WRKSRC}/tests/check/libs/audiocdsrc.c

.include <bsd.port.mk>
