# $OpenBSD: Makefile,v 1.44 2006/08/04 00:10:42 espie Exp $

COMMENT=	"HTML editor for experienced web designers"

VERSION=	1.0
DISTNAME=	bluefish-${VERSION}
PKGNAME=	${DISTNAME}p5
CATEGORIES=	www 
HOMEPAGE=	http://bluefish.openoffice.nl/

MAINTAINER=	Damien Couderc <couderc@openbsd.org>

MASTER_SITES=	http://pkedu.fbt.eitn.wau.nl/~olivier/downloads/ \
		http://bluefish.mrball.net/downloads/ \
		ftp://ftp.ratisbona.com/pub/bluefish/downloads/

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 atk-1.0.0.0 c m \
			fontconfig freetype glib-2.0.0.0 gmodule-2.0.0.0 \
			gobject-2.0.0.0 pango-1.0.0.0 \
			pangocairo-1.0.0.0 cairo \
			gthread-2.0.0.0 SM ICE gnomevfs-2 \
			bonobo-activation art_lgpl_2 bonobo-2 bonoboui-2 \
			gconf-2 popt pangoft2-1.0.0.0 gnome-2 \
			gnomecanvas-2 xml2 ORBit-2 pthread z

MODULES=	devel/gettext

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig \
		::misc/shared-mime-info
LIB_DEPENDS=	gtk-x11-2.0.>=0.14,gdk-x11-2.0.>=0.14,gdk_pixbuf-2.0.>=0.14::x11/gtk+2 \
		pcre::devel/pcre \
		gnomeui-2::x11/gnome/libgnomeui

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-freedesktop_org-menu='${PREFIX}/share/applications/' \
		--disable-update-databases
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

USE_X11=	Yes
USE_GMAKE=	Yes

NO_REGRESS=	Yes

.include <bsd.port.mk>
