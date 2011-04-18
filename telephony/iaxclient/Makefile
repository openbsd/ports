# $OpenBSD: Makefile,v 1.13 2011/04/18 23:11:53 sthen Exp $

COMMENT-main=	IAX client library
COMMENT-tcl=	IAX client library, tcl bindings
COMMENT-iaxcomm=IAX softphone

DISTNAME=	iaxclient-2.1beta3
PKGNAME-main=	${DISTNAME}
REVISION-main=	4
PKGNAME-tcl=	${DISTNAME:S/iaxclient/iaxclient-tcl/}
REVISION-tcl=	5
PKGNAME-iaxcomm= iaxcomm-1.1.0
REVISION-iaxcomm= 5

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

cWANTLIB	+= avcodec avutil faac gsm m mp3lame ogg orc-0.4 ossaudio
cWANTLIB	+= portaudio pthread schroedinger-1.0 speex speexdsp
cWANTLIB	+= sndio theoradec theoraenc vidcap vorbis vorbisenc vpx
cWANTLIB	+= x264 z

WANTLIB-main 	+= c ${cWANTLIB}

WANTLIB-tcl	+= GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB-tcl	+= Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB-tcl	+= drm expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB-tcl	+= gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB-tcl	+= gtk-x11-2.0 iaxclient iconv intl pango-1.0 pangocairo-1.0
WANTLIB-tcl	+= pangoft2-1.0 pcre pixman-1 png pthread-stubs xcb xcb-render
WANTLIB-tcl	+= xcb-shm ${cWANTLIB}

WANTLIB-iaxcomm	+= GL ICE SDL SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB-iaxcomm	+= Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB-iaxcomm	+= c cairo drm expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB-iaxcomm	+= gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB-iaxcomm	+= gtk-x11-2.0 iaxclient iconv intl iodbc jpeg mspack
WANTLIB-iaxcomm	+= pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB-iaxcomm	+= png pthread-stubs stdc++ tiff usbhid wx_base wx_base_net
WANTLIB-iaxcomm	+= wx_base_odbc wx_base_xml wx_gtk2_adv wx_gtk2_aui wx_gtk2_core
WANTLIB-iaxcomm	+= wx_gtk2_dbgrid wx_gtk2_html wx_gtk2_qa wx_gtk2_richtext
WANTLIB-iaxcomm	+= wx_gtk2_xrc xcb xcb-render xcb-shm ${cWANTLIB}

LIB_DEPENDS=	audio/gsm \
		audio/portaudio-svn \
		audio/speex \
		graphics/ffmpeg \
		graphics/libvidcap

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
