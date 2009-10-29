# $OpenBSD: Makefile,v 1.2 2009/10/29 19:37:17 landry Exp $

COMMENT =	desktop daemon to perform advanced window manipulations

V =		0.2.4
DISTNAME =	winwrangler-$V
CATEGORIES =	x11

HOMEPAGE =	https://launchpad.net/winwrangler

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES =	${HOMEPAGE}/0.2/$V/+download/

MODULES =	devel/gettext

USE_GMAKE =	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -liconv"

LIB_DEPENDS =	gtkhotkey::x11/gtkhotkey \
		wnck-1::devel/libwnck \
		execinfo::devel/libexecinfo \
		startup-notification-1::devel/startup-notification

WANTLIB += ICE SM X11 XRes Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 gio-2.0 glib-2.0
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pcre
WANTLIB += pixman-1 png pthread-stubs xcb xcb-atom xcb-aux
WANTLIB += xcb-event z

.include <bsd.port.mk>
