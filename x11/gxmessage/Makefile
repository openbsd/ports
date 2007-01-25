# $OpenBSD: Makefile,v 1.1.1.1 2007/01/25 16:18:31 ajacoutot Exp $

COMMENT=	"GTK2 based xmessage clone"

DISTNAME=	gxmessage-2.6.2
CATEGORIES=	x11

HOMEPAGE=	http://homepages.ihug.co.nz/~trmusson/programs.html#gxmessage

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://homepages.ihug.co.nz/~trmusson/stuff/

WANTLIB=	X11 Xext Xrender atk-1.0 c cairo fontconfig freetype \
		glib-2.0 glitz gmodule-2.0 gobject-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 png z

MODULES=	devel/gettext
LIB_DEPENDS=	gdk-x11-2.0,gtk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2

USE_X11=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
