# $OpenBSD: Makefile,v 1.14 2010/10/24 21:26:49 ajacoutot Exp $

BROKEN=			needs to stop using deprecated functions from e-d-s

COMMENT=		lightweight calendar

DISTNAME=		dates-0.4.8
REVISION=		2

CATEGORIES=		misc x11

HOMEPAGE=		http://pimlico-project.org/dates.html

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://pimlico-project.org/sources/dates/

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1
WANTLIB += dbus-glib-1 expat fontconfig freetype gconf-2 gcrypt
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnutls gobject-2.0 gpg-error gthread-2.0 gtk-x11-2.0
WANTLIB += ical icalss icalvcal m nspr4 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += soup-2.4 tasn1 xcb xcb-render xcb-render-util xml2
WANTLIB += z

MODULES=		devel/gettext \
			textproc/intltool

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
USE_GROFF =	Yes

LIB_DEPENDS=		ecal-1.2,edataserver-1.2::databases/evolution-data-server
RUN_DEPENDS=		::devel/desktop-file-utils

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-owl \
			--disable-hildon
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
