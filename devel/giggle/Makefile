# $OpenBSD: Makefile,v 1.5 2009/08/10 06:31:07 kili Exp $

COMMENT=	gtk-based git repository viewer
CATEGORIES=	devel x11
DISTNAME=	giggle-0.4
PKGNAME=	${DISTNAME}p3
SHARED_LIBS+=	giggle	0.0	# .0.0

HOMEPAGE=	http://developer.imendio.com/projects/giggle
MAINTAINER=	Landry Breuil <gaston@gcu.info>

MASTER_SITES=	http://ftp.imendio.com/pub/imendio/giggle/src/

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	devel/gettext \
		textproc/intltool

USE_GMAKE=	Yes
USE_X11=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	GMSGFMT="${LOCALBASE}/bin/msgfmt"

RUN_DEPENDS=	::devel/git \
		::devel/desktop-file-utils
BUILD_DEPENDS+=	::devel/git

LIB_DEPENDS=	glade-2.0.>=0::devel/libglade2 \
		gtksourceview-2.0.>=0::x11/gtksourceview

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png pthread-stubs xcb xml2 z

.include <bsd.port.mk>
