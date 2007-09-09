# $OpenBSD: Makefile,v 1.7 2007/09/09 20:21:33 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		simple GTK desktop news aggregator

DISTNAME=		liferea-1.2.23
CATEGORIES=		www x11

HOMEPAGE=		http://liferea.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 SM X11 Xau Xcursor Xdmcp Xext Xfixes Xi \
		Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 \
		m nspr4 pango-1.0 pangocairo-1.0 pangoft2-1.0 plc4 \
		plds4 png pthread xml2 z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=liferea/}

MODULES=		devel/gettext

BUILD_DEPENDS=		::devel/xulrunner,-devel \
			::textproc/p5-XML-Parser
LIB_DEPENDS=		xulrunner/gtkembedmoz,xulrunner/xpcom,xulrunner/xul::devel/xulrunner,-main \
			gconf-2.>=5::devel/gconf2 \
			notify.>=2::devel/libnotify \
			lua.>=5::lang/lua \
			xslt.>=3.3::textproc/libxslt \
			dbus-glib-1::x11/dbus-glib \
			gnutls.>=12::security/gnutls \
			gcrypt.>=12::security/libgcrypt \
			gpg-error.>=1::security/libgpg-error
RUN_DEPENDS=		::devel/desktop-file-utils \
			::x11/hicolor-icon-theme

MAKE_FLAGS=		liblinotiflibnotify_la_LDFLAGS="-module -avoid-version"
FAKE_FLAGS=		htmldocdir="${PREFIX}/share/doc/liferea/html" \
			DESTDIR=${WRKINST}
CFLAGS+=		-I${LOCALBASE}/xulrunner/include/webbrwsr/ \
			-I${LOCALBASE}/xulrunner/include/dom/ \
			-I${LOCALBASE}/xulrunner/include/pref/ \
			-I${LOCALBASE}/xulrunner/include/necko/

USE_X11=		Yes

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/liferea \
			--docdir=${PREFIX}/share/doc/liferea \
			--enable-dbus \
			--disable-gecko \
			--disable-gtkhtml2 \
			--enable-xulrunner \
			--enable-gnutls \
			--with-gnutls-libs=${LOCALBASE}/lib \
			--enable-libnotify \
			--enable-lua
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			MOZILLA_LIB_ROOT="${LOCALBASE}/xulrunner"

.include <bsd.port.mk>
