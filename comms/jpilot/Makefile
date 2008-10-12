# $OpenBSD: Makefile,v 1.49 2008/10/12 14:45:58 ajacoutot Exp $

COMMENT=	desktop organizer software for the palm pilot

DISTNAME=	jpilot-1.6.0
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

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo crypto \
		expat fontconfig freetype glib-2.0 glitz gmodule-2.0 \
		gobject-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre pixman-1 png pthread z

LIB_DEPENDS=	pisock.>=9::comms/pilot-link \
		gtk-x11-2.0.>=400.13,gdk-x11-2.0.>=400.13,gdk_pixbuf-2.0.>=400.13::x11/gtk+2
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
