# $OpenBSD: Makefile,v 1.1.1.1 2008/05/17 17:10:40 jasper Exp $

COMMENT=		C++ library to  create, manipulate and render SVG files

DISTNAME=		wxsvg-1.0b10
SHARED_LIBS +=	wxsvg                0.0      # .0.0
CATEGORIES=		x11 graphics

HOMEPAGE=		http://www.wxsvg.org/

# Modified LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=wxsvg/}

WANTLIB=		X11 Xau Xdmcp c expat fontconfig freetype glib-2.0 \
			gmodule-2.0 gobject-2.0 m pango-1.0 pangoft2-1.0 pcre \
			pthread stdc++ z

MODULES=		devel/gettext

BUILD_DEPENDS=          ${MODGNU_AUTOCONF_DEPENDS} \
                        ${MODGNU_AUTOMAKE_DEPENDS}
LIB_DEPENDS=		avcodec,avformat::graphics/ffmpeg \
			art_lgpl_2::graphics/libart \
			wx_base,wx_base_net,wx_base_odbc,wx_base_xml,wx_gtk2_adv,wx_gtk2_aui,wx_gtk2_core,wx_gtk2_dbgrid,wx_gtk2_html,wx_gtk2_qa,wx_gtk2_richtext,wx_gtk2_xrc::x11/wxWidgets

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
USE_X11=		Yes

AUTOMAKE_VERSION=	1.9
AUTOCONF_VERSION=	2.61
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-render=libart \
			--enable-ffmpeg
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-extract:
	@touch ${WRKSRC}/ltmain.sh

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

.include <bsd.port.mk>
