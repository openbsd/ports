# $OpenBSD: Makefile,v 1.9 2006/10/04 21:00:53 mbalmer Exp $

COMMENT=		"SVG vector drawing application."

DISTNAME=		sodipodi-0.34
PKGNAME=		${DISTNAME}p4
CATEGORIES=		graphics

HOMEPAGE=		http://sodipodi.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xext Xrender atk-1.0 c fontconfig freetype \
			glib-2.0 gmodule-2.0 gobject-2.0 \
			png z m pango-1.0 pangoft2-1.0 \
			pangocairo-1.0 cairo glitz

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sodipodi/}

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
			art_lgpl_2.>=5::graphics/libart \
			popt.>=0.3::devel/popt \
			xml2.>=9.0::textproc/libxml

USE_X11=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS=		--with-xft
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PKG_CONFIG_PATH="${X11BASE}/lib/pkgconfig"

NO_REGRESS=		Yes

.include <bsd.port.mk>
