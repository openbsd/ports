# $OpenBSD: Makefile,v 1.3 2007/04/30 10:09:14 ajacoutot Exp $

COMMENT=	"set of tools to create, alter and inspect Matroska files"

DISTNAME=	mkvtoolnix-2.0.2
PKGNAME=	${DISTNAME}p0
CATEGORIES=	multimedia x11

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.bunkus.org/videotools/mkvtoolnix/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/sources/

WANTLIB=	c ebml m ogg stdc++ z expat

MODULES=	converters/libiconv
LIB_DEPENDS=	FLAC.>=7::audio/flac \
		pcre.>=1,pcrecpp.>=2::devel/pcre \
		bz2.>=10::archivers/bzip2 \
		lzo.>=1::archivers/lzo \
		matroska:libmatroska->=0.8.1:multimedia/libmatroska \
		vorbis.>=5::audio/libvorbis \
		magic.>=1::devel/libmagic

MAKE_FLAGS+=	V=1

NO_REGRESS=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
		ac_cv_has_nl_langinfo=no

CONFIGURE_ARGS=	--enable-lzo \
		--enable-bz2 \
		--with-flac

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=--disable-gui
.else
USE_X11=	Yes
WANTLIB+=	pthread
LIB_DEPENDS+=	wx_base,wx_base_net,wx_base_odbc,wx_base_xml,wx_gtk2_adv,wx_gtk2_core,wx_gtk2_dbgrid,wx_gtk2_html,wx_gtk2_qa,wx_gtk2_xrc:wxWidgets-gtk2->=2.6.3:x11/wxWidgets
CONFIGURE_ARGS+=--enable-gui
.endif

.include <bsd.port.mk>
