# $OpenBSD: Makefile,v 1.8 2007/01/04 20:19:54 steven Exp $

COMMENT=	"small utility which displays system activity."

DISTNAME=	hot-babe-0.2.2
PKGNAME=	${DISTNAME}p3
CATEGORIES=	sysutils

HOMEPAGE=	http://dindinx.net/hotbabe/

MAINTAINER=	Jan Lindblom <cl0wn@ludd.ltu.se>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xext Xrender c fontconfig freetype m z \
		glib-2.0 gmodule-2.0 gobject-2.0 pango-1.0 glitz png \
		pangocairo-1.0 pangoft2-1.0 cairo

MASTER_SITES=	${HOMEPAGE}/downloads/

MODULES=	devel/gettext
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2

USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
