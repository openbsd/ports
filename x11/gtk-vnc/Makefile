# $OpenBSD: Makefile,v 1.9 2009/04/26 11:01:05 ajacoutot Exp $

COMMENT-main=		VNC viewer widget for GTK
COMMENT-plugin=		gtk-vnc browser plugin

V=			0.3.8
DISTNAME=		gtk-vnc-${V}
PKGNAME-main=		${DISTNAME}p0
PKGNAME-plugin=		gtk-vnc-plugin-${V}p0

SHARED_LIBS +=	gtk-vnc-1.0          1.0      # .0.1
CATEGORIES=		x11 net

HOMEPAGE=		http://gtk-vnc.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gtk-vnc/}

MODULES=		devel/gettext \
			lang/python

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 \
		glib-2.0 glitz gmodule-2.0 gobject-2.0 gpg-error gthread-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre pixman-1 png tasn1 z
WANTLIB-main=	${WANTLIB} c pthread

MULTI_PACKAGES=		-main
PSEUDO_FLAVORS=		no_plugin
FLAVOR?=

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::x11/py-gtk2
LIB_DEPENDS=		gnutls.>=13::security/gnutls
LIB_DEPENDS-plugin=	${LIB_DEPENDS} \
			gtk-vnc-1.0::${BASE_PKGPATH}

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
USE_X11=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-examples \
			--with-python
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.if ${FLAVOR:L:Mno_plugin}
CONFIGURE_ARGS+=	--enable-plugin=no
.else
MULTI_PACKAGES+=	-plugin
BUILD_DEPENDS+=		::devel/xulrunner,-devel
CONFIGURE_ARGS+=	--enable-plugin=yes
CONFIGURE_ENV+=		MOZILLA_PLUGIN_CFLAGS="-I${LOCALBASE}/xulrunner/include/plugin \
				-I${LOCALBASE}/xulrunner/include/java \
				-I${LOCALBASE}/include/nspr" \
			MOZILLA_PLUGIN_LIBS="-L${LOCALBASE}/xulrunner"
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gtk-vnc
	${INSTALL_DATA} ${WRKSRC}/plugin/README \
		${PREFIX}/share/examples/gtk-vnc/README.plugin

.include <bsd.port.mk>
