# $OpenBSD: Makefile,v 1.30 2009/08/10 06:32:43 kili Exp $

COMMENT=	GTK2-based scientific calculator

DISTNAME=	galculator-1.3.4
PKGNAME=	${DISTNAME}p1
CATEGORIES=	math
HOMEPAGE=	http://galculator.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xcomposite Xdamage pcre \
		Xrender atk-1.0 c expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 m \
		pango-1.0 xml2 z pangocairo-1.0 cairo glitz png \
		pangoft2-1.0 pixman-1 pthread-stubs xcb

MODULES=	devel/gettext \
		textproc/intltool

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=galculator/}
EXTRACT_SUFX=	.tar.bz2

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	glade-2.0::devel/libglade2

SEPARATE_BUILD=	simple
USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
