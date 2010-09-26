# $OpenBSD: Makefile,v 1.4 2010/09/26 15:09:29 ajacoutot Exp $

COMMENT-main=	IAX client library
COMMENT-tcl=	IAX client library, tcl bindings
COMMENT-iaxcomm=IAX softphone

DISTNAME=	iaxclient-2.1beta3
PKGNAME-main=	${DISTNAME}
REVISION-main=	1
PKGNAME-tcl=	${DISTNAME:S/iaxclient/iaxclient-tcl/}
PKGNAME-iaxcomm= iaxcomm-1.1.0
REVISION-iaxcomm= 1

CATEGORIES=	telephony
USE_LIBTOOL=	Yes
SHARED_LIBS=	tcliaxclient02 0.0 \
		iaxclient 0.0

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=iaxclient/}
HOMEPAGE=	http://iaxclient.sourceforge.net/
MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=	-main -tcl -iaxcomm
MODULES=	devel/gettext x11/tk

WANTLIB-main 	+= c faac faad m mp3lame ogg orc-0.4 ossaudio pthread
WANTLIB-main 	+= schroedinger-1.0 sndio theora vorbis vorbisenc x264
WANTLIB-main 	+= z

WANTLIB-tcl 	+= X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB-tcl 	+= Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat faac
WANTLIB-tcl 	+= faad fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB-tcl 	+= gobject-2.0 gthread-2.0 m mp3lame ogg orc-0.4 ossaudio
WANTLIB-tcl 	+= pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB-tcl 	+= png pthread pthread-stubs schroedinger-1.0 sndio theora
WANTLIB-tcl 	+= vorbis vorbisenc x264 xcb xcb-render xcb-render-util
WANTLIB-tcl 	+= z

WANTLIB-iaxcomm += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB-iaxcomm += Xi Xinerama Xrandr Xrender atk-1.0 avcodec avutil c
WANTLIB-iaxcomm += cairo expat faac faad fontconfig freetype gdk-x11-2.0
WANTLIB-iaxcomm += gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB-iaxcomm += gsm gthread-2.0 gtk-x11-2.0 m mp3lame ogg orc-0.4 ossaudio
WANTLIB-iaxcomm += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB-iaxcomm += png portaudio pthread pthread-stubs schroedinger-1.0
WANTLIB-iaxcomm += sndio speex speexdsp stdc++ theora vidcap vorbis vorbisenc
WANTLIB-iaxcomm += x264 xcb xcb-render xcb-render-util z

LIB_DEPENDS=	gsm.>=1::audio/gsm \
		portaudio::audio/portaudio-svn \
		speex.>=8,speexdsp.>=1::audio/speex \
		avcodec.>=13,avutil.>=6::graphics/ffmpeg \
		vidcap.>=0::graphics/libvidcap

LIB_DEPENDS-tcl=${LIB_DEPENDS} \
		iaxclient::${BASE_PKGPATH} \
		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2

RUN_DEPENDS-tcl=${MODTCL_RUN_DEPENDS}

RUN_DEPENDS-iaxcomm=${MODGETTEXT_RUN_DEPENDS}
LIB_DEPENDS-iaxcomm=${MODGETTEXT_LIB_DEPENDS} \
	iaxclient::${BASE_PKGPATH} \
	wx_base,wx_base_net,wx_base_odbc,wx_base_xml,wx_gtk2_adv,wx_gtk2_aui,wx_gtk2_core,wx_gtk2_dbgrid,wx_gtk2_html,wx_gtk2_qa,wx_gtk2_richtext,wx_gtk2_xrc::x11/wxWidgets

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -L/usr/lib -lossaudio" \
		WISH=${MODTK_BIN}
CONFIGURE_ARGS=--enable-clients="testcall tkphone iaxcomm"
# iaxphone needs an ANSI (not unicode) build of wxWidgets
# vtestcall pulls in SDL dependency, not doing this for now

# ALLOW_SMP_DANGERS is at least needed on sparc64 and mips64
CFLAGS+=	-I${LOCALBASE}/include -DALLOW_SMP_DANGERS
MAKE_ENV=	LDFLAGS='-L/usr/lib -lossaudio'

pre-configure:
	@# non-standard, not using MODTCL_WISH_ADJ
	perl -pi -e '$$. == 6 && s!wish!${MODTK_BIN}!;' \
		${WRKSRC}/simpleclient/tkphone/tkiaxphone
	${SUBST_CMD} ${WRKSRC}/contrib/tcl/configure \
		${WRKSRC}/simpleclient/tkphone/tkiaxphone

post-build:
	cd ${WRKSRC}/contrib/tcl && ${CONFIGURE_ENV} ./configure \
	--with-tcl=${MODTCL_LIBDIR} && ${MAKE_PROGRAM}

post-install:
	cd ${WRKSRC}/contrib/tcl && ${MAKE_PROGRAM} install

.include <bsd.port.mk>
