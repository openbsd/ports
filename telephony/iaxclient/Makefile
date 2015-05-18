# $OpenBSD: Makefile,v 1.30 2015/05/18 18:04:24 sebastia Exp $

COMMENT-main=	IAX client library
COMMENT-tcl=	IAX client library, tcl bindings
COMMENT-iaxcomm=IAX softphone

DISTNAME=	iaxclient-2.1beta3
PKGNAME-main=	${DISTNAME}
REVISION-main=	15
PKGNAME-tcl=	${DISTNAME:S/iaxclient/iaxclient-tcl/}
REVISION-tcl=	16
PKGNAME-iaxcomm= iaxcomm-1.1.0
REVISION-iaxcomm= 18

CATEGORIES=	telephony
SHARED_LIBS=	tcliaxclient02 0.0 \
		iaxclient 0.0

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=iaxclient/}
HOMEPAGE=	http://iaxclient.sourceforge.net/
MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MULTI_PACKAGES=	-main -tcl -iaxcomm
MODULES=	devel/gettext x11/tk

cWANTLIB	+= avcodec gsm m ogg ossaudio portaudio pthread speex
cWANTLIB	+= speexdsp sndio theora vidcap z

WANTLIB-main 	+= avutil c mp3lame vorbis vorbisenc vpx x264 ${cWANTLIB}
WANTLIB-main 	+= opus stdc++ swresample x265 xvidcore

WANTLIB-tcl	+= X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB-tcl	+= Xi Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB-tcl	+= expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB-tcl	+= gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB-tcl	+= gtk-x11-2.0 iaxclient pango-1.0 pangocairo-1.0
WANTLIB-tcl	+= pangoft2-1.0 pcre pixman-1 png pthread-stubs xcb xcb-render
WANTLIB-tcl	+= graphite2 harfbuzz vorbis
WANTLIB-tcl	+= xcb-shm ffi ${cWANTLIB} ${MODGETTEXT_WANTLIB}

WANTLIB-iaxcomm	+= ICE SDL SM X11 Xcomposite Xcursor Xdamage
WANTLIB-iaxcomm	+= Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB-iaxcomm	+= c cairo expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB-iaxcomm	+= gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB-iaxcomm	+= gtk-x11-2.0 iaxclient iodbc jpeg mspack ${MODGETTEXT_WANTLIB}
WANTLIB-iaxcomm	+= pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB-iaxcomm	+= png pthread-stubs stdc++ tiff usbhid wx_base wx_base_net
WANTLIB-iaxcomm	+= wx_base_odbc wx_base_xml wx_gtk2_adv wx_gtk2_aui wx_gtk2_core
WANTLIB-iaxcomm	+= wx_gtk2_dbgrid wx_gtk2_html wx_gtk2_qa wx_gtk2_richtext
WANTLIB-iaxcomm	+= graphite2 harfbuzz vorbis
WANTLIB-iaxcomm	+= wx_gtk2_xrc xcb xcb-render xcb-shm ffi ${cWANTLIB}

BUILD_DEPENDS=	${MODTK_BUILD_DEPENDS}

LIB_DEPENDS=	audio/gsm \
		audio/portaudio-svn \
		audio/speex \
		graphics/ffmpeg>=20130319 \
		graphics/libvidcap \
		multimedia/libtheora	

LIB_DEPENDS-tcl=${LIB_DEPENDS} \
		${BASE_PKGPATH} \
		x11/gtk+2

RUN_DEPENDS-tcl=${MODTCL_RUN_DEPENDS}

RUN_DEPENDS-iaxcomm=${MODGETTEXT_RUN_DEPENDS}
LIB_DEPENDS-iaxcomm=${MODGETTEXT_LIB_DEPENDS} \
	${BASE_PKGPATH} \
	x11/wxWidgets

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -L/usr/lib -lossaudio" \
		WISH=${MODTK_BIN}
CONFIGURE_ARGS=--enable-clients="testcall tkphone iaxcomm"
# iaxphone needs an ANSI (not unicode) build of wxWidgets
# vtestcall pulls in SDL dependency, not doing this for now

# ALLOW_SMP_DANGERS is at least needed on sparc64 and mips64
CFLAGS+=	-I${LOCALBASE}/include -DALLOW_SMP_DANGERS
MAKE_ENV=	LDFLAGS='-L/usr/lib -lossaudio'
FAKE_FLAGS =	iaxclidir=${MODTCL_TCLDIR}/tkphone

pre-configure:
	@# non-standard, not using MODTCL_WISH_ADJ
	perl -pi -e '$$. == 6 && s!wish!${MODTK_BIN}!;' \
		${WRKSRC}/simpleclient/tkphone/tkiaxphone
	${SUBST_CMD} ${WRKSRC}/contrib/tcl/configure \
		${WRKSRC}/simpleclient/tkphone/tkiaxphone

post-build:
	cd ${WRKSRC}/contrib/tcl && ${CONFIGURE_ENV} ./configure \
	--libdir=${MODTCL_TCLDIR} --with-tcl=${MODTCL_LIBDIR} \
	&& ${MAKE_PROGRAM}

post-install:
	cd ${WRKSRC}/contrib/tcl && \
		${MAKE_PROGRAM} install PKG_DIR=tcliaxclient \
		iaxclidir=${MODTCL_TCLDIR}/tkphone

.include <bsd.port.mk>
