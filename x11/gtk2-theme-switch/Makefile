# $OpenBSD: Makefile,v 1.7 2007/01/04 20:19:54 steven Exp $

COMMENT=		"switch GTK+2 themes quickly"

DISTNAME=		gtk-theme-switch-2.0.0rc2
PKGNAME=		${DISTNAME:S/gtk/gtk2/}p3
CATEGORIES=		x11 graphics

HOMEPAGE=		http://www.muhri.net/nav.php3?node=gts

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xrender atk-1.0 c fontconfig freetype cairo \
			glib-2.0 gmodule-2.0 gobject-2.0 glitz png m z \
			pango-1.0 pangocairo-1.0 pangoft2-1.0 \

MASTER_SITES=		http://www.muhri.net/

MODULES=		devel/gettext
LIB_DEPENDS=		gtk-x11-2.0,gdk_pixbuf-2.0,gdk-x11-2.0::x11/gtk+2

USE_X11=		Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
