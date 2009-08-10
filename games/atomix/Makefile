# $OpenBSD: Makefile,v 1.5 2009/08/10 06:31:41 kili Exp $

COMMENT=	build molecules out of single atoms

DISTNAME=	atomix-2.14.0
PKGNAME=	${DISTNAME}p2
CATEGORIES=	games
EXTRACT_SUFX=	.tar.bz2

MASTER_SITES=	http://ftp.gnome.org/pub/GNOME/sources/atomix/2.14/

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 \
		bonobo-2 bonobo-activation bonoboui-2 c cairo \
		expat fontconfig freetype gailutil gconf-2 gdk-x11-2.0 \
		gdk_pixbuf-2.0 glib-2.0 glitz gmodule-2.0 gnome-keyring \
		gnomecanvas-2 gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 \
		iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pixman-1 png popt pthread xml2 z dbus-1 gio-2.0 \
		pthread-stubs xcb

MODULES=	textproc/intltool

LIB_DEPENDS=	gnome-2::x11/gnome/libgnome \
		gnomeui-2::x11/gnome/libgnomeui
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

CONFIGURE_ARGS+=--localstatedir=/var

USE_GMAKE=	Yes
USE_X11=	Yes

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA} ${WRKINST}/var/games/atomix.scores \
		${PREFIX}/share/atomix/atomix.scores 

.include <bsd.port.mk>
