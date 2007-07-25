# $OpenBSD: Makefile,v 1.3 2007/07/25 15:24:58 steven Exp $

COMMENT=	free space simulator and planetarium

DISTNAME=	celestia-1.4.1
PKGNAME=	${DISTNAME}p1
CATEGORIES=	astro x11

HOMEPAGE=	http://www.shatters.net/celestia/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=celestia/}

WANTLIB=	GL GLU ICE SM X11 Xau Xcursor Xdmcp Xext Xfixes Xi \
		Xinerama Xmu Xrandr Xrender Xt atk-1.0 c cairo expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		glib-2.0 glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 \
		jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 pangox-1.0 \
		png stdc++ z

MODULES=	devel/gettext
LIB_DEPENDS=	gdkglext-x11-1.0,gtkglext-x11-1.0::x11/gtkglext \
		lua.>=5::lang/lua
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

USE_X11=	Yes
USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include \
			-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-gtk \
		--with-lua

pre-configure:
	@perl -pi -e 's,!!SYSCONFDIR!!,${SYSCONFDIR},g' \
		${WRKSRC}/src/celestia/celestiacore.cpp

post-install:
	${INSTALL_DATA} ${WRKSRC}/models/*.3ds \
		${PREFIX}/share/celestia/models

.include <bsd.port.mk>
