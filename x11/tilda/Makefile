# $OpenBSD: Makefile,v 1.22 2016/11/06 06:54:54 jca Exp $

COMMENT=		drop-down terminal emulator

GH_ACCOUNT=		lanoxx
GH_PROJECT=		tilda
GH_TAGNAME=		tilda-1.3.3
DISTNAME=		tilda-1.3.3

CATEGORIES=		x11

HOMEPAGE=		https://github.com/lanoxx/tilda

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 c confuse gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 intl pango-1.0 vte-2.91

# autogen.sh needs autopoint (gettext)
BUILD_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/gettext-tools
LIB_DEPENDS=		devel/gettext \
			devel/libconfuse \
			devel/vte3
RUN_DEPENDS=		devel/desktop-file-utils

USE_GMAKE=		Yes

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-rpath

post-patch:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} NOCONFIGURE=1 \
	    ./autogen.sh

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tilda
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/tilda

.include <bsd.port.mk>
