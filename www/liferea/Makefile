# $OpenBSD: Makefile,v 1.27 2009/06/11 18:27:03 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		simple GTK desktop news aggregator

DISTNAME=		liferea-1.4.19
PKGNAME=		${DISTNAME}p4
CATEGORIES=		www x11

HOMEPAGE=		http://liferea.sourceforge.net/

MAINTAINER=		Wiktor Izdebski <vicviq@gmail.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo \
		dbus-1 expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 m nspr4 pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre pixman-1 plc4 plds4 png pthread xml2 z gio-2.0 tasn1

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=liferea/}

MODULES=		devel/gettext \
			textproc/intltool \
			devel/gconf2

BUILD_DEPENDS=		::devel/xulrunner,-devel
LIB_DEPENDS=		xulrunner/gtkembedmoz,xulrunner/xpcom::devel/xulrunner,-main \
			notify.>=2::devel/libnotify \
			lua.>=5::lang/lua \
			xslt.>=3.3::textproc/libxslt \
			dbus-glib-1::x11/dbus-glib \
			gnutls.>=12::security/gnutls \
			gcrypt.>=12::security/libgcrypt \
			gpg-error.>=1::security/libgpg-error \
			sqlite3::databases/sqlite3 \
			glade-2.0.::devel/libglade2
RUN_DEPENDS=		::devel/desktop-file-utils \
			::x11/hicolor-icon-theme

FAKE_FLAGS=		htmldocdir="${PREFIX}/share/doc/liferea/html"
CFLAGS+=		-I${LOCALBASE}/xulrunner/include/webbrwsr/ \
			-I${LOCALBASE}/xulrunner/include/dom/ \
			-I${LOCALBASE}/xulrunner/include/pref/ \
			-I${LOCALBASE}/xulrunner/include/necko/

USE_X11=		Yes
USE_LIBTOOL=		Yes
MODGCONF2_SCHEMAS_DIR=	liferea

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--docdir=${PREFIX}/share/doc/liferea \
			--enable-dbus \
			--disable-gecko \
			--disable-gtkhtml2 \
			--disable-webkit \
			--enable-xulrunner \
			--enable-gnutls \
			--with-gnutls-libs=${LOCALBASE}/lib \
			--enable-libnotify \
			--enable-lua
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			MOZILLA_LIB_ROOT="${LOCALBASE}/xulrunner"

.include <bsd.port.mk>
