# $OpenBSD: Makefile,v 1.10 2005/12/30 16:28:25 naddy Exp $

COMMENT=	"color terminal emulator with transparency and unicode support"
DISTNAME=	mlterm-2.9.0
PKGNAME=	${DISTNAME}p3
SHARED_LIBS=	kik	10.0 \
		mkf	13.0
CATEGORIES=	x11

MAINTAINER=	Waldemar Brodkorb <wbx@openbsd.de>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE SM X11 Xext Xft Xrender atk-1.0.0.0 c cairo fontconfig \
		freetype gdk-x11-2.0.0.0 glib-2.0.0.0 glitz gmodule-2.0.0.0 \
		gobject-2.0.0.0 iconv intl m pango-1.0.0.0 pangocairo-1.0.0.0 \
		pangoft2-1.0.0.0 util png z

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
MAKE_ENV=	LIBkik_VERSION=${LIBkik_VERSION} \
		LIBmkf_VERSION=${LIBmkf_VERSION}

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mlterm
	${INSTALL_DATA} ${WRKSRC}/etc/[a-z]* ${PREFIX}/share/examples/mlterm

.include <bsd.port.mk>
