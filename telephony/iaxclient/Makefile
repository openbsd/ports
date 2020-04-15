# $OpenBSD: Makefile,v 1.47 2020/04/15 16:31:15 kmos Exp $

# strangely, though aarch64 *only* uses LLD, the same failure can be
# reproduced on amd64 by forcing ld.bfd (USE_LLD=No)
BROKEN-aarch64=	linker error, undefined refs to avcodec_encode_video and avcodec_alloc_frame

# Same error that hits aarch64 hits sparc64, albeit with ld.bfd
BROKEN-sparc64=	linker error, undefined refs to avcodec_encode_video and avcodec_alloc_frame

COMMENT-main=	IAX client library
COMMENT-tcl=	IAX client library, tcl bindings

DISTNAME=	iaxclient-2.1beta3
PKGNAME-main=	${DISTNAME}
PKGNAME-tcl=	${DISTNAME:S/iaxclient/iaxclient-tcl/}
REVISION=	26

CATEGORIES=	telephony
SHARED_LIBS=	tcliaxclient02 0.0 \
		iaxclient 0.0

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=iaxclient/}
HOMEPAGE=	http://iaxclient.sourceforge.net/
MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

MULTI_PACKAGES=	-main -tcl
MODULES=	x11/tk

COMPILER =		base-clang ports-gcc base-gcc

cWANTLIB	+= avcodec gsm m ogg ossaudio portaudio pthread speex
cWANTLIB	+= speexdsp sndio theora theoradec vidcap z

WANTLIB-main 	+= ${cWANTLIB} ${COMPILER_LIBCXX} avutil c dav1d
WANTLIB-main 	+= iconv lzma mp3lame opus swresample theoraenc vorbis
WANTLIB-main 	+= vorbisenc vpx x264 x265 xvidcore

WANTLIB-tcl	+= X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB-tcl	+= Xi Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB-tcl	+= expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB-tcl	+= gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB-tcl	+= gtk-x11-2.0 iaxclient iconv intl pango-1.0 pangocairo-1.0
WANTLIB-tcl	+= pangoft2-1.0 pcre pixman-1 png xcb xcb-render
WANTLIB-tcl	+= graphite2 harfbuzz vorbis fribidi
WANTLIB-tcl	+= xcb-shm ffi ${cWANTLIB}


BUILD_DEPENDS=	${MODTK_BUILD_DEPENDS}

LIB_DEPENDS=	audio/gsm \
		audio/portaudio-svn \
		audio/speex \
		graphics/ffmpeg \
		graphics/libvidcap \
		multimedia/libtheora

LIB_DEPENDS-tcl=${LIB_DEPENDS} \
		${BASE_PKGPATH} \
		x11/gtk+2

RUN_DEPENDS-tcl=${MODTCL_RUN_DEPENDS}

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -L/usr/lib -lossaudio" \
		WISH=${MODTK_BIN}
CONFIGURE_ARGS=--enable-clients="testcall tkphone"
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
