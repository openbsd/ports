# $OpenBSD: Makefile,v 1.23 2009/10/11 18:51:20 kili Exp $

COMMENT=	interactive geometry program

DISTNAME=	drgeo-1.1.0
PKGNAME=	${DISTNAME}p11
CATEGORIES=	education math

HOMEPAGE=	http://www.ofset.org/drgeo/	

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ofset/}

WANTLIB =	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 glitz \
		gmodule-2.0 gmp gobject-2.0 gtk-x11-2.0 m pango-1.0 gio-2.0 \
		ltdl pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread \
		pthread-stubs stdc++ xcb xml2 z

MODULES=	devel/gettext \
		textproc/intltool

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	glade-2.0::devel/libglade2 \
		guile::lang/guile

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
