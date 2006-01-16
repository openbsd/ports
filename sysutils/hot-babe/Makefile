# $OpenBSD: Makefile,v 1.3 2006/01/16 12:57:11 steven Exp $

COMMENT=	"small utility which displays system activity."

DISTNAME=	hot-babe-0.2.2
PKGNAME=	${DISTNAME}p1
CATEGORIES=	sysutils

HOMEPAGE=	http://dindinx.net/hotbabe/

MAINTAINER=	Jan Lindblom <cl0wn@ludd.ltu.se>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xext Xft Xrender c fontconfig freetype m \
		glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 pango-1.0.0.0 \
		pangox-1.0.0.0 pangoft2-1.0.0.0 pangoxft-1.0.0.0

MASTER_SITES=	${HOMEPAGE}/downloads/

MODULES=	devel/gettext
LIB_DEPENDS=	gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0::x11/gtk+2
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig

NO_REGRESS=	Yes

.include <bsd.port.mk>
