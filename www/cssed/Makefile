# $OpenBSD: Makefile,v 1.30 2013/03/11 11:44:41 espie Exp $

COMMENT=	CSS editor

DISTNAME=	cssed-0.4.0
REVISION=	13
CATEGORIES=	www editors

HOMEPAGE=	http://cssed.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cssed/}

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread pthread-stubs stdc++ xcb z vte xml2
WANTLIB += xcb-render GL xcb-shm

LIB_DEPENDS=	devel/vte \
		textproc/libxml

MODULES=	devel/gettext

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
