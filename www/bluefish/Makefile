# $OpenBSD: Makefile,v 1.36 2005/02/14 23:00:49 couderc Exp $

COMMENT=	"HTML editor for experienced web designers"

VERSION=	1.0
DISTNAME=	bluefish-${VERSION}
CATEGORIES=	www 
HOMEPAGE=	http://bluefish.openoffice.nl/

MAINTAINER=	Damien Couderc <couderc@openbsd.org>

MASTER_SITES=	http://pkedu.fbt.eitn.wau.nl/~olivier/downloads/ \
		ftp://bluefish.advancecreations.com/bluefish/downloads/ \
		http://bluefish.mrball.net/downloads/ \
		ftp://ftp.ratisbona.com/pub/bluefish/downloads/ \
		http://bluefish.shellhung.org/downloads/

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xext Xft Xinerama Xrender atk-1.0.0.0 c \
			fontconfig freetype glib-2.0.0.0 gmodule-2.0.0.0 \
			gobject-2.0.0.0 m pango-1.0.0.0 pangox-1.0.0.0 \
			pangoxft-1.0.0.0

MODULES=	devel/gettext

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gtk-x11-2.0.0.14,gdk-x11-2.0.0.14,gdk_pixbuf-2.0.0.14::x11/gtk+2 \
		pcre::devel/pcre \
		aspell::textproc/aspell/core

CONFIGURE_STYLE=gnu
#CONFIGURE_ARGS=	--with-icon-path='$${DESTDIR}${PREFIX}/share/pixmaps/'
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE=	Yes

NO_REGRESS=	Yes

pre-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps

.include <bsd.port.mk>
