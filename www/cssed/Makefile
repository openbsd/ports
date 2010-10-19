# $OpenBSD: Makefile,v 1.23 2010/10/19 08:02:53 espie Exp $

COMMENT=	CSS editor

DISTNAME=	cssed-0.4.0
REVISION=	9
CATEGORIES=	www editors

HOMEPAGE=	http://cssed.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cssed/}

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread pthread-stubs stdc++ xcb z vte xml2
WANTLIB += xcb-render xcb-render-util

LIB_DEPENDS=	::devel/vte \
		::textproc/libxml

MODULES=	devel/gettext

USE_X11=	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--with-help-menus \
		--with-plugin-headers \
		--with-terminal \
		--without-ipc-queue

# trailing ^M after a \ for line continuation confuses gcc2
pre-patch:
	@perl -i -pe 's/\r$$//' ${WRKSRC}/scintilla/gtk/ScintillaGTK.cxx

.include <bsd.port.mk>
