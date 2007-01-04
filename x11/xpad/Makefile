# $OpenBSD: Makefile,v 1.11 2007/01/04 20:19:55 steven Exp $

COMMENT=	"virtual sticky pad system"

DISTNAME=	xpad-2.12
PKGNAME=	${DISTNAME}p0
CATEGORIES=	x11

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xpad/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://xpad.sourceforge.net/

MODULES=	devel/gettext

LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2

WANTLIB=	ICE SM X11 Xext Xrender atk-1.0 c z fontconfig freetype \
		glib-2.0 gmodule-2.0 gobject-2.0 m pango-1.0 glitz png \
		pangocairo-1.0 pangoft2-1.0 cairo

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
