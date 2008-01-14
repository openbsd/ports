# $OpenBSD: Makefile,v 1.1.1.1 2008/01/14 23:21:04 simon Exp $

COMMENT=	build molecules out of single atoms

DISTNAME=	atomix-2.14.0
CATEGORIES=	games
EXTRACT_SUFX=	.tar.bz2

MASTER_SITES=	http://ftp.gnome.org/pub/GNOME/sources/atomix/2.14/

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 \
		audiofile bonobo-2 bonobo-activation bonoboui-2 c cairo \
		esd expat fontconfig freetype gailutil gconf-2 gdk-x11-2.0 \
		gdk_pixbuf-2.0 glib-2.0 glitz gmodule-2.0 gnome-keyring \
		gnomecanvas-2 gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 \
		iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		png popt pthread xml2 z

LIB_DEPENDS=	gnome-2::x11/gnome/libgnome \
		gnomeui-2::x11/gnome/libgnomeui
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
BUILD_DEPENDS=	::textproc/intltool

CONFIGURE_ARGS+=--localstatedir=/var

USE_GMAKE=	Yes
USE_X11=	Yes

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA} ${WRKINST}/var/games/atomix.scores \
		${PREFIX}/share/atomix/atomix.scores 

.include <bsd.port.mk>
