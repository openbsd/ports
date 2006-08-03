# $OpenBSD: Makefile,v 1.5 2006/08/03 23:15:57 espie Exp $

COMMENT=	"multithreaded gtk2 file transfer client"

DISTNAME=	gftp-2.0.18
PKGNAME=	${DISTNAME}p2
CATEGORIES=	net

HOMEPAGE=	http://gftp.seul.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@lphp.org>

# GPL
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	${HOMEPAGE} \
		ftp://www.gftp.org/pub/gftp/old-releases/

WANTLIB=	readline c m ncurses util

EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/gettext
CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--with-readline \
		--without-included-gettext \
		--enable-ssl

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
LIB_DEPENDS=	glib.1::devel/glib
CONFIGURE_ARGS+=--disable-gtkport --disable-gtk20
.else
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gtk-x11-2.0.>=600.10,gdk_pixbuf-2.0.>=600.0,gdk-x11-2.0.>=600.0::x11/gtk+2
WANTLIB+=	freetype pthread X11 fontconfig \
		gthread-2.0.0.0 glib-2.0.0.0 gmodule-2.0.0.0 \
		gobject-2.0.0.0 atk-1.0.0.0 pango-1.0.0.0 pangocairo-1.0.0.0 \
		pangoft2-1.0.0.0 cairo
.endif

.include <bsd.port.mk>
