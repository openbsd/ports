# $OpenBSD: Makefile,v 1.12 2010/11/06 23:49:20 espie Exp $

COMMENT=		C++ library to create, manipulate and render SVG files

DISTNAME=		wxsvg-1.0.4
REVISION=		0
EPOCH=			0
SHARED_LIBS +=	wxsvg                0.0      # .0.0
CATEGORIES=		x11 graphics

HOMEPAGE=		http://www.wxsvg.org/

# Modified LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=wxsvg/}
EXTRACT_SUFX=		.tar.bz2

WANTLIB += X11 Xau Xdmcp bz2 c expat faac faad fontconfig
WANTLIB += freetype glib-2.0 gmodule-2.0 gobject-2.0 m mp3lame
WANTLIB += ogg pango-1.0 pangoft2-1.0 pcre pthread stdc++ theora
WANTLIB += vorbis vorbisenc x264 z orc-0.4 schroedinger-1.0
WANTLIB += pthread-stubs xcb
WANTLIB += gsm gthread-2.0 speex

MODULES=		devel/gettext

LIB_DEPENDS =	:ffmpeg->=20080620p10:graphics/ffmpeg \
		::graphics/libart \
		::x11/wxWidgets
WANTLIB += 	avcodec.>=13.1 avformat.>=12 avutil.>=6 swscale.>=1 \
		art_lgpl_2 wx_base wx_base_net wx_base_odbc wx_base_xml \
		wx_gtk2_adv wx_gtk2_aui wx_gtk2_core wx_gtk2_dbgrid \
		wx_gtk2_html wx_gtk2_qa wx_gtk2_richtext wx_gtk2_xrc

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-render=libart \
			--enable-ffmpeg
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-extract:
	@touch ${WRKSRC}/ltmain.sh

.include <bsd.port.mk>
