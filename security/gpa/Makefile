# $OpenBSD: Makefile,v 1.35 2017/09/23 10:32:54 sthen Exp $

COMMENT=	graphical interface for GnuPG

DISTNAME=	gpa-0.9.9
REVISION=	2
CATEGORIES=    	security x11

HOMEPAGE=	https://www.gnupg.org/software/gpa/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender assuan atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gpg-error gpgme gtk-x11-2.0 iconv intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pthread z

MASTER_SITES = 	https://gnupg.org/ftp/gcrypt/gpa/
EXTRACT_SUFX=	.tar.bz2

RUN_DEPENDS=	devel/desktop-file-utils
LIB_DEPENDS=	devel/gettext \
		security/gpgme \
		x11/gtk+2

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
