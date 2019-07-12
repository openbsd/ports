# $OpenBSD: Makefile,v 1.27 2019/07/12 20:51:22 sthen Exp $

COMMENT=		drop-down terminal emulator

GH_ACCOUNT=		lanoxx
GH_PROJECT=		tilda
GH_TAGNAME=		tilda-1.3.3
DISTNAME=		tilda-1.3.3

REVISION=		2

CATEGORIES=		x11

HOMEPAGE=		https://github.com/lanoxx/tilda

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += X11 c confuse gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 intl pango-1.0 vte-2.91

# autogen.sh needs autopoint (gettext)
BUILD_DEPENDS=		devel/gettext,-tools
LIB_DEPENDS=		devel/gettext,-runtime \
			devel/libconfuse \
			devel/vte3
RUN_DEPENDS=		devel/desktop-file-utils

USE_GMAKE=		Yes

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
AUTORECONF=		./autogen.sh
CONFIGURE_STYLE=	autoreconf
CONFIGURE_ARGS=		--disable-rpath

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tilda
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/tilda

.include <bsd.port.mk>
