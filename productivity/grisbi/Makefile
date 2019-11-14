# $OpenBSD: Makefile,v 1.52 2019/11/14 18:38:07 landry Exp $

COMMENT=	personal accounting application

DISTNAME=	grisbi-1.2.2
EXTRACT_SUFX=	.tar.bz2
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=grisbi/}

CATEGORIES=	productivity x11

HOMEPAGE=	https://www.grisbi.org/

MAINTAINER=	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 bz2 c cairo crypto dbus-1 expat
WANTLIB += ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 goffice-0.10
WANTLIB += graphite2 gsf-1 gthread-2.0 gtk-3 harfbuzz lzma m ofx
WANTLIB += osp pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB += pthread ${COMPILER_LIBCXX} xcb xcb-render xcb-shm xml2 z
WANTLIB += ICE SM atk-bridge-2.0 avahi-common cairo-gobject croco-0.6
WANTLIB += epoxy gmp gs hogweed idn2 jpeg nettle p11-kit rsvg-2
WANTLIB += spectre tasn1 unistring xslt iconv intl fribidi

COMPILER =		base-clang ports-gcc base-gcc

MODULES =	textproc/intltool \
		devel/dconf

LIB_DEPENDS=	textproc/libxml \
		x11/gtk+3 \
		devel/goffice \
		devel/libofx

RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

BUILD_DEPENDS=	devel/cunit
USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include"

CONFIGURE_ARGS=	--with-openssl

.include <bsd.port.mk>
