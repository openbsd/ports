# $OpenBSD: Makefile,v 1.12 2002/03/27 01:28:27 lebel Exp $

COMMENT=		"screen saver and locker for the X Window System"

VERSION=		4.02
DISTNAME=		xscreensaver-${VERSION}
CATEGORIES=     	x11
NEED_VERSION=		1.487

HOMEPAGE=		http://www.jwz.org/xscreensaver/

MAINTAINER=		David Lebel <lebel@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.jwz.org/xscreensaver/

NO_REGRESS=		Yes
USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-hackdir="${PREFIX}/libexec/xscreensaver"
CONFIGURE_ARGS+=	--with-gl
CONFIGURE_ARGS+=	--with-xpm
CONFIGURE_ARGS+=	--without-gnome
CONFIGURE_ARGS+=	--with-zippy=/usr/games/fortune
CONFIGURE_ARGS+=	--without-kerberos

FLAVORS=		no_gle
FLAVOR?=		

.if !${FLAVOR:L:Mno_gle}
LIB_DEPENDS=		gle.3::graphics/gle
CONFIGURE_ARGS+=	--with-gle
.else
CONFIGURE_ARGS+=	--without-gle
.endif

LIB_DEPENDS+=		jpeg.62::graphics/jpeg
CONFIGURE_ARGS+=	--with-jpeg

# depends on XML (it needs both of them!)
LIB_DEPENDS+=		xml2.6::textproc/libxml xml.9::textproc/libxml1
CONFIGURE_ARGS+=	--with-xml

# gtk
CONFIGURE_ARGS+=	--with-gtk --without-motif
LIB_DEPENDS+=		gtk.1.2,gdk::x11/gtk+

# gdk pixbuf
LIB_DEPENDS+=		gdk_pixbuf.2,gdk_pixbuf_xlib.2::graphics/gdk-pixbuf
CONFIGURE_ARGS+=	--with-pixbuf

CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ENV+=		CFLAGS="${CFLAGS} -I${LOCALBASE}/include"
CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib -pthread"
MAKE_ENV+=		${CONFIGURE_ENV}

post-install:
# rename deco to xdeco, so it doesn't conflict with misc/deco
	@mv ${PREFIX}/man/man1/deco.1  ${PREFIX}/man/man1/xdeco.1
	@mv ${PREFIX}/libexec/xscreensaver/deco \
		${PREFIX}/libexec/xscreensaver/xdeco
	@mv ${PREFIX}/lib/xscreensaver/config/deco.xml \
		${PREFIX}/lib/xscreensaver/config/xdeco.xml

.include <bsd.port.mk>
