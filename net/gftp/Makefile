# $OpenBSD: Makefile,v 1.19 2009/10/27 12:00:35 jasper Exp $

COMMENT=	multithreaded gtk2 file transfer client

DISTNAME=	gftp-2.0.19
PKGNAME=	${DISTNAME}p1
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
BUILD_DEPENDS=	::devel/gettext
LIB_DEPENDS=	glib.>=1::devel/glib
CONFIGURE_ARGS+=--disable-gtkport --disable-gtk20
.else
USE_X11=	Yes
LIB_DEPENDS=	gtk-x11-2.0.>=600.10,gdk_pixbuf-2.0.>=600.0,gdk-x11-2.0.>=600.0::x11/gtk+2
RUN_DEPENDS+=	:desktop-file-utils-*:devel/desktop-file-utils
WANTLIB+=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xcomposite Xdamage pixman-1 gio-2.0 \
		Xrender atk-1.0 cairo expat fontconfig freetype \
		glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0 \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 png pthread \
		pthread-stubs xcb z
.endif

.include <bsd.port.mk>
