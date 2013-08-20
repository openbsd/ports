# $OpenBSD: Makefile,v 1.30 2013/08/20 22:05:59 zhuk Exp $

COMMENT=	graphical interface for GnuPG

DISTNAME=	gpa-0.7.6
REVISION=	7
CATEGORIES=    	security x11

HOMEPAGE=	http://www.gnupg.org/gpa.html

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://wald.intevation.org/frs/download.php/350/
EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/gettext

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gdk_pixbuf-2.0 gdk-x11-2.0 gtk-x11-2.0 gio-2.0 
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gpgme gthread-2.0 assuan
WANTLIB += gpg-error m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1
WANTLIB += png pthread pthread-stubs xcb xcb-render z
WANTLIB += GL xcb-shm

RUN_DEPENDS=	devel/desktop-file-utils \
		security/gnupg
BUILD_DEPENDS=	security/gnupg
LIB_DEPENDS=	security/gpgme \
		x11/gtk+2

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
