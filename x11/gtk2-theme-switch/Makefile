# $OpenBSD: Makefile,v 1.1.1.1 2005/10/31 20:14:11 alek Exp $

COMMENT=		"switch GTK+2 themes quickly"

DISTNAME=		gtk-theme-switch-2.0.0rc2
PKGNAME=		${DISTNAME:S/gtk/gtk2/}
CATEGORIES=		x11 graphics

HOMEPAGE=		http://www.muhri.net/nav.php3?node=gts

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		Xrender c X11 fontconfig m freetype Xft glib-2.0.0.0 \
			gmodule-2.0.0.0 pangox-1.0.0.0 gobject-2.0.0.0 \
			pangoxft-1.0.0.0 pango-1.0.0.0 atk-1.0.0.0

MASTER_SITES=		http://www.muhri.net/

MODULES=		devel/gettext
LIB_DEPENDS=		gtk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gdk-x11-2.0.0.0::x11/gtk+2

NO_REGRESS=		Yes

.include <bsd.port.mk>
