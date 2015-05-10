# $OpenBSD: Makefile,v 1.7 2015/05/10 07:41:08 ajacoutot Exp $

COMMENT=		fast and simple image viewer

DISTNAME=		viewnior-1.5

CATEGORIES=		graphics x11

HOMEPAGE=		http://siyanpanayotov.com/project/viewnior/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo exiv2 expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs stdc++ xcb xcb-render
WANTLIB += xcb-shm z

MASTER_SITES=		https://github.com/xsisqox/Viewnior/archive/

MODULES=		devel/gettext \
			textproc/intltool

LIB_DEPENDS=		graphics/exiv2 \
			x11/gtk+2

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gtk+3,-guic

USE_GMAKE=		yes

WRKDIST=		${WRKDIR}/Viewnior-${DISTNAME}

# detect images using mimetype
BUILD_DEPENDS +=	misc/shared-mime-info
RUN_DEPENDS +=		misc/shared-mime-info

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool \
			x11/gnome/common

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

pre-configure:
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		./autogen.sh

.include <bsd.port.mk>
