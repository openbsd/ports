# $OpenBSD: Makefile,v 1.110 2017/08/19 13:54:38 ajacoutot Exp $

COMMENT=		library for layout and rendering of text

GNOME_VERSION=		1.40.11
GNOME_PROJECT=		pango

SHARED_LIBS +=  pango-1.0            3800.1   # 4000.11
SHARED_LIBS +=  pangoft2-1.0         3800.1   # 4000.11
SHARED_LIBS +=  pangoxft-1.0         3800.1   # 4000.11
SHARED_LIBS +=  pangocairo-1.0       3800.1   # 4000.11

CATEGORIES=		devel x11

HOMEPAGE=		http://www.pango.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xft Xrender c cairo expat ffi fontconfig freetype
WANTLIB += glib-2.0 gobject-2.0 graphite2 gthread-2.0 harfbuzz
WANTLIB += iconv intl m pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z

MODULES=		x11/gnome

MODGNOME_TOOLS=		gobject-introspection

LIB_DEPENDS=		devel/glib2 \
			devel/harfbuzz

CONFIGURE_STYLE=	gnu

### XXX check if needed at next update
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool \
			textproc/gtk-doc

pre-configure:
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		NOCONFIGURE=1 ./autogen.sh
###

.include <bsd.port.mk>
