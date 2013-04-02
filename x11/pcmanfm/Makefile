# $OpenBSD: Makefile,v 1.28 2013/04/02 16:16:47 ajacoutot Exp $

COMMENT=	fast and lightweight file manager

DISTNAME=	pcmanfm-0.3.5.10
REVISION=	11

CATEGORIES=	x11

HOMEPAGE=	http://pcmanfm.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pcmanfm/}

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread z pthread-stubs xcb
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0 fam
WANTLIB += xcb-render xcb-render-util startup-notification-1

LIB_DEPENDS=	x11/gtk+2 \
		sysutils/gamin \
		devel/startup-notification
RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info>=0.21

MODULES=	devel/gettext

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread"
CONFIGURE_ARGS=	--disable-hal \
		--disable-inotify

pre-configure:
	@perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},g' \
		${WRKSRC}/src/app-chooser-dialog.c \
		${WRKSRC}/src/pref-dialog.c

.include <bsd.port.mk>
