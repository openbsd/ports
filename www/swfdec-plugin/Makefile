# $OpenBSD: Makefile,v 1.3 2009/08/10 06:34:56 kili Exp $

SHARED_ONLY=		Yes

COMMENT=		Flash plugin for Mozilla browsers

V=			0.8.2
DISTNAME=		swfdec-mozilla-$V
PKGNAME=		swfdec-plugin-$Vp0
CATEGORIES=		graphics www

HOMEPAGE=		http://swfdec.freedesktop.org/

# LGPLv2.1
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/download/swfdec-mozilla/${V:R}/

MODULES=		devel/gettext

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 gcrypt gio-2.0 glib-2.0 \
		glitz gmodule-2.0 gnutls gobject-2.0 gpg-error gstpbutils-0.10 \
		gstreamer-0.10 gthread-2.0 gtk-x11-2.0 m oil-0.3 pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread-stubs \
		sndio soup-2.4 tasn1 xcb xml2 z

LIB_DEPENDS=		swfdec-0.8,swfdec-gtk-0.8::graphics/swfdec

USE_X11=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-plugin-dir="${LOCALBASE}/lib/mozilla-plugins/"
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
