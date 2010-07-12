# $OpenBSD: Makefile,v 1.23 2010/07/12 22:07:38 sthen Exp $

COMMENT=	multithreaded gtk2 file transfer client

DISTNAME=	gftp-2.0.19
REVISION=	4
CATEGORIES=	net

HOMEPAGE=	http://gftp.seul.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	${HOMEPAGE} \
		ftp://www.gftp.org/pub/gftp/old-releases/

WANTLIB=	readline c m ncurses util

CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--with-readline \
		--without-included-gettext \
		--enable-ssl

FLAVORS=	no_x11
FLAVOR?=

MODULES=	devel/gettext

BUILD_DEPENDS=	::devel/bison

.if ${FLAVOR:L:Mno_x11}
LIB_DEPENDS+=	glib-2.0.>=1803::devel/glib2
CONFIGURE_ARGS+=--disable-gtkport
.else
USE_X11=	Yes
LIB_DEPENDS+=	gtk-x11-2.0.>=600.10,gdk_pixbuf-2.0.>=600.0,gdk-x11-2.0.>=600.0::x11/gtk+2
RUN_DEPENDS+=	:desktop-file-utils-*:devel/desktop-file-utils
WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1
WANTLIB += png pthread pthread-stubs xcb xcb-render xcb-render-util
WANTLIB += z
.endif

.include <bsd.port.mk>
