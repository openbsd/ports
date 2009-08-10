# $OpenBSD: Makefile,v 1.52 2009/08/10 06:30:30 kili Exp $

COMMENT=	desktop organizer software for the palm pilot

DISTNAME=	jpilot-1.6.2
PKGNAME=	${DISTNAME}p0
CATEGORIES=	comms palm

MASTER_SITES=	${HOMEPAGE}/

HOMEPAGE=	http://www.jpilot.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += gpg-error m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs xcb z

LIB_DEPENDS=	pisock.>=9::comms/pilot-link \
		gcrypt.>=14::security/libgcrypt \
		gtk-x11-2.0,gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

MODULES=	devel/gettext \
		textproc/intltool

USE_LIBTOOL=	Yes
USE_X11=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-pilot-prefix=${LOCALBASE} \
		--with-gtk-prefix=${LOCALBASE}

MAKE_FLAGS=	mkdir_p='mkdir -p'

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/jpilot.xpm ${PREFIX}/share/pixmaps

.include <bsd.port.mk>
