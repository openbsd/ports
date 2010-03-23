# $OpenBSD: Makefile,v 1.19 2010/03/23 13:32:39 jasper Exp $

COMMENT=	graphical interface for GnuPG

DISTNAME=	gpa-0.7.6
CATEGORIES=    	security x11

HOMEPAGE=	http://www.gnupg.org/gpa.html

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://wald.intevation.org/frs/download.php/350/
EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/gettext

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += gpg-error m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1
WANTLIB += png pthread-stubs xcb z

RUN_DEPENDS=	::devel/desktop-file-utils \
		::security/gnupg
BUILD_DEPENDS=	::security/gnupg
LIB_DEPENDS=	gpgme::security/gpgme \
		gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2

USE_X11=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
