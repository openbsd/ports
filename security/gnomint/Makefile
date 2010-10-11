# $OpenBSD: Makefile,v 1.2 2010/10/11 08:17:57 jasper Exp $

COMMENT=	X.509 Certification Authority management tool

DISTNAME=	gnomint-1.2.1
REVISION=	1

CATEGORIES=	security x11

HOMEPAGE=	http://gnomint.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext tasn1
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1
WANTLIB += dbus-glib-1 expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 sqlite3
WANTLIB += pcre pixman-1 png pthread pthread-stubs readline termcap
WANTLIB += xcb xcb-render xcb-render-util z gcrypt gnutls gpg-error

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gnomint/}

MODULES=	devel/gettext \
		devel/gconf2 \
		textproc/intltool

MODGCONF2_SCHEMAS_DIR=gnomint

RUN_DEPENDS=	::misc/shared-mime-info \
		::devel/desktop-file-utils

LIB_DEPENDS=	::security/gnutls \
		::databases/sqlite3

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
