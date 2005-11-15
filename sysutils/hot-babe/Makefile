# $OpenBSD: Makefile,v 1.2 2005/11/15 19:02:43 wilfried Exp $

COMMENT=	"small utility which displays system activity."

DISTNAME=	hot-babe-0.2.2
PKGNAME=	${DISTNAME}p0
CATEGORIES=	sysutils

HOMEPAGE=	http://dindinx.net/hotbabe/

MAINTAINER=	Jan Lindblom <cl0wn@ludd.ltu.se>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 c cairo fontconfig freetype glib-2.0.0.0 gmodule-2.0.0.0 \
		gobject-2.0.0.0 iconv intl m pango-1.0.0.0 pangocairo-1.0.0.0 \
		pangoft2-1.0.0.0

MASTER_SITES=	${HOMEPAGE}/downloads/


LIB_DEPENDS=	gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0::x11/gtk+2
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig

NO_REGRESS=	Yes

.include <bsd.port.mk>
