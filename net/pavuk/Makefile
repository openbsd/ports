# $OpenBSD: Makefile,v 1.16 2009/08/10 06:33:43 kili Exp $

COMMENT=	tool to mirror contents of HTTP and FTP servers

DISTNAME=	pavuk-0.9.35
PKGNAME=	${DISTNAME}p2
CATEGORIES=	net

HOMEPAGE=	http://www.pavuk.org/

# GPLv2+, OpenSSL exception
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c crypto ssl z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pavuk/}

FLAVORS=	no_x11
FLAVOR?=

MODULES=	devel/gettext

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --disable-debug --disable-socks --disable-gnome \
		 --disable-tree --disable-js --with-regex=posix
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.if !${FLAVOR:L:Mno_x11}
USE_X11=	Yes
LIB_DEPENDS+=	gtk-x11-2.0,gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2
WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xmu Xrandr Xrender atk-1.0 cairo expat
WANTLIB += fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gobject-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread-stubs xcb
.else
CONFIGURE_ARGS+= --disable-gtk
.endif

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pavuk
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pavuk
	cd ${WRKSRC} && ${INSTALL_DATA} COPYING README wget-pavuk.HOWTO \
	  ${PREFIX}/share/doc/pavuk
	cd ${WRKSRC} && ${INSTALL_DATA} *.sample \
	  ${PREFIX}/share/examples/pavuk

.include <bsd.port.mk>
