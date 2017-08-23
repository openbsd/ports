# $OpenBSD: Makefile,v 1.34 2017/08/23 11:57:53 sthen Exp $

COMMENT=	graphical interface for GnuPG

DISTNAME=	gpa-0.9.9
REVISION=	1
CATEGORIES=    	security x11

HOMEPAGE=	https://www.gnupg.org/software/gpa/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES = 	https://gnupg.org/ftp/gcrypt/gpa/
EXTRACT_SUFX=	.tar.bz2

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gpgme gtk-x11-2.0 iconv intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pthread z

RUN_DEPENDS=	devel/desktop-file-utils
LIB_DEPENDS=	devel/gettext \
		security/gpgme \
		x11/gtk+2

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
