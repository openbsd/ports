# $OpenBSD: Makefile,v 1.34 2019/07/12 20:48:42 sthen Exp $

COMMENT=	tool to mirror contents of HTTP and FTP servers

DISTNAME=	pavuk-0.9.35
REVISION=	10
CATEGORIES=	net

HOMEPAGE=	http://www.pavuk.org/

# GPLv2+, OpenSSL exception
PERMIT_PACKAGE=	Yes

WANTLIB=	c crypto iconv intl ssl z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pavuk/}

FLAVORS=	no_x11
FLAVOR?=

BUILD_DEPENDS=	devel/gettext,-tools

LIB_DEPENDS=	devel/gettext,-runtime

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --disable-debug --disable-socks --disable-gnome \
		 --disable-tree --disable-js --with-regex=posix
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.if !${FLAVOR:Mno_x11}
LIB_DEPENDS+=	x11/gtk+2
WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xmu Xrandr Xrender atk-1.0 cairo
WANTLIB += fontconfig freetype gio-2.0 glib-2.0
WANTLIB += gobject-2.0 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += gdk_pixbuf-2.0 gtk-x11-2.0 gdk-x11-2.0
.else
CONFIGURE_ARGS+= --disable-gtk
.endif

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pavuk
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pavuk
	cd ${WRKSRC} && ${INSTALL_DATA} COPYING README wget-pavuk.HOWTO \
	  ${PREFIX}/share/doc/pavuk
	cd ${WRKSRC} && ${INSTALL_DATA} *.sample \
	  ${PREFIX}/share/examples/pavuk

.include <bsd.port.mk>
