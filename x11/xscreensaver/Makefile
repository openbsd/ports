# $OpenBSD: Makefile,v 1.16 2002/09/14 22:41:03 marcm Exp $

COMMENT=		"screen saver and locker for the X Window System"

VERSION=		4.05
DISTNAME=		xscreensaver-${VERSION}
PKGNAME=		xscreensaver-${VERSION}p1
CATEGORIES=     	x11

HOMEPAGE=		http://www.jwz.org/xscreensaver/

MAINTAINER=		Marc Matteo <marcm@lectroid.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.jwz.org/xscreensaver/

MODULES=		gettext

LIB_DEPENDS+=		xml2.6::textproc/libxml \
			gdk_pixbuf.2,gdk_pixbuf_xlib.2::graphics/gdk-pixbuf

MAKE_ENV+=		${CONFIGURE_ENV}

USE_X11=		Yes
USE_GMAKE=		Yes
NO_REGRESS=		Yes

CONFIGURE_STYLE=	autoconf
AUTOCONF_NEW=		Yes
CONFIGURE_ARGS+=	--with-hackdir="${PREFIX}/libexec/xscreensaver"
CONFIGURE_ARGS+=	--with-gl
CONFIGURE_ARGS+=	--with-xpm
CONFIGURE_ARGS+=	--without-gnome
CONFIGURE_ARGS+=	--with-zippy=/usr/games/fortune
CONFIGURE_ARGS+=	--without-kerberos
CONFIGURE_ARGS+=	--with-xml
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ENV+=		CFLAGS="${CFLAGS} -I${LOCALBASE}/include"
CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib -pthread"

FLAVORS=		no_gle
FLAVOR?=		

.if !${FLAVOR:L:Mno_gle}
LIB_DEPENDS+=		gle.3::graphics/gle
CONFIGURE_ARGS+=	--with-gle
.else
CONFIGURE_ARGS+=	--without-gle
.endif

post-install:
# rename deco to xdeco, so it doesn't conflict with misc/deco
	@mv ${PREFIX}/man/man1/deco.1  ${PREFIX}/man/man1/xdeco.1
	@mv ${PREFIX}/libexec/xscreensaver/deco \
		${PREFIX}/libexec/xscreensaver/xdeco
	@mv ${PREFIX}/lib/xscreensaver/config/deco.xml \
		${PREFIX}/lib/xscreensaver/config/xdeco.xml

.include <bsd.port.mk>
