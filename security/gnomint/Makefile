# $OpenBSD: Makefile,v 1.10 2012/04/23 17:15:18 espie Exp $

COMMENT=	X.509 Certification Authority management tool

DISTNAME=	gnomint-1.2.1
REVISION=	8

CATEGORIES=	security x11

HOMEPAGE=	http://gnomint.sourceforge.net/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo drm expat fontconfig freetype gcrypt gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls
WANTLIB += gobject-2.0 gpg-error gthread-2.0 gtk-x11-2.0 hogweed
WANTLIB += m nettle pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs readline sqlite3
WANTLIB += tasn1 termcap xcb xcb-render xcb-shm z
WANTLIB += dbus-1 dbus-glib-1 ffi p11-kit stdc++

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gnomint/}

MODULES=	devel/gettext \
		devel/gconf2 \
		textproc/intltool

MODGCONF2_SCHEMAS_DIR=gnomint

RUN_DEPENDS=	misc/shared-mime-info \
		devel/desktop-file-utils

LIB_DEPENDS=	security/gnutls \
		security/libgcrypt \
		x11/gtk+2

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
