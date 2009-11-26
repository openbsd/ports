# $OpenBSD: Makefile,v 1.31 2009/11/26 12:48:10 landry Exp $

SHARED_ONLY=		Yes

COMMENT=		simple GTK desktop news aggregator

DISTNAME=		liferea-1.6.0
CATEGORIES=		www x11

HOMEPAGE=		http://liferea.sourceforge.net/

MAINTAINER=		Wiktor Izdebski <vicviq@gmail.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender Xt atk-1.0 c \
		cairo dbus-1 dbus-glib-1 expat fontconfig freetype \
		gailutil gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 \
		jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png pthread pthread-stubs stdc++ xcb xml2 z gcrypt gpg-error \
		tasn1 sqlite3 icudata icui18n icuuc


MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=liferea/}

MODULES=		devel/gettext \
			textproc/intltool \
			devel/gconf2
LIB_DEPENDS=		gnutls.>=12::security/gnutls \
			lua.>=5::lang/lua \
			notify.>=2::devel/libnotify \
			xslt.>=3.3::textproc/libxslt \
			glade-2.0.::devel/libglade2 \
			soup-2.4::devel/libsoup,-main \
			enchant.>=6::textproc/enchant \
			webkit-1.0::www/webkit

RUN_DEPENDS=		::devel/desktop-file-utils \
			::x11/hicolor-icon-theme

FAKE_FLAGS=		htmldocdir="${PREFIX}/share/doc/liferea/html"

USE_X11=		Yes
USE_LIBTOOL=		Yes
MODGCONF2_SCHEMAS_DIR=	liferea

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--docdir=${PREFIX}/share/doc/liferea \
			--enable-dbus \
			--enable-libnotify \
			--enable-lua
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
