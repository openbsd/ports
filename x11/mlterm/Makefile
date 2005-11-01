# $OpenBSD: Makefile,v 1.7 2005/11/01 11:58:57 naddy Exp $

COMMENT=	"color terminal emulator with transparency and unicode support"
DISTNAME=	mlterm-2.9.0
PKGNAME=	${DISTNAME}p1
CATEGORIES=	x11

MAINTAINER=	Waldemar Brodkorb <wbx@openbsd.de>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE SM X11 Xcursor Xext Xft Xinerama Xrender atk-1.0.0.0 c \
		fontconfig freetype gdk-x11-2.0.0.0 glib-2.0.0.0 \
		gmodule-2.0.0.0 gobject-2.0.0.0 iconv intl m pango-1.0.0.0 \
		pangoft2-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0 util 

HOMEPAGE=	http://mlterm.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mlterm/}

USE_X11=	Yes
SHARED_ONLY=Yes

BUILD_DEPENDS=	:pkgconfig->=0.14.0p1:devel/pkgconfig
LIB_DEPENDS=	gdk_pixbuf-2.0.0.14,gtk-x11-2.0.0.14::x11/gtk+2

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-anti-alias --enable-utmp \
		--with-imagelib=gdk-pixbuf2 --with-type-engines=xft,xcore
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include/freetype2" \
		PKG_CONFIG_PATH="${X11BASE}/lib/pkgconfig"

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mlterm
	${INSTALL_DATA} ${WRKSRC}/etc/[a-z]* ${PREFIX}/share/examples/mlterm

.include <bsd.port.mk>
