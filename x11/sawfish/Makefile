# $OpenBSD: Makefile,v 1.20 2006/01/22 23:21:47 sturm Exp $

COMMENT=	"extensible window manager"

VERSION=	1.3
DISTNAME=	sawfish-${VERSION}
PKGNAME=	${DISTNAME}p3
CATEGORIES=	x11

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sawmill/}

HOMEPAGE=       http://sawmill.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE SM X11 Xext Xft.5 Xinerama Xrender.3 atk-1.0.0.0 c m \
		fontconfig.2 freetype.13 gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 \
		gdk_pixbuf_xlib-2.0.0.0 glib-2.0.0.0 gmodule-2.0.0.0 \
		gobject-2.0.0.0 gtk-x11-2.0.0.0 pango-1.0.0.0 \
		pangox-1.0.0.0 pangoxft-1.0.0.0 pangoft2-1.0.0.0 rep.12

BUILD_DEPENDS=	${RUN_DEPENDS} \
		::devel/pkgconfig
RUN_DEPENDS=	:rep-gtk-*:x11/rep-gtk

MODULES=	devel/gettext

GNU_ARCH=	${MACHINE_ARCH:S/amd64/x86_64/}-unknown-openbsd${OPSYS_VER}
SUBST_VARS=	GNU_ARCH VERSION

USE_X11=	Yes
USE_GMAKE=      Yes
CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/etc
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --without-audiofile --without-esd \
		 --disable-capplet --disable-themer \
		 --disable-gnome-widgets --disable-linguas
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I{X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		PKG_CONFIG_PATH="/usr/X11R6/lib/pkgconfig"

NO_REGRESS=	Yes

.include <bsd.port.mk>
