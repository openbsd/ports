COMMENT=	MS-Explorer like file manager for X

DISTNAME=	xfe-1.44
EXTRACT_SUFX=	.tar.xz
CATEGORIES=	x11

HOMEPAGE=	http://roland65.free.fr/xfe/
MAINTAINER=	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} FOX-1.6 X11 X11-xcb Xft Xrandr c
WANTLIB += fontconfig freetype m png util xcb xcb-util z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xfe/}

MODULES=	textproc/intltool

LIB_DEPENDS=	devel/fox

RUN_DEPENDS=	devel/desktop-file-utils

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/fox-1.6 \
			-I${X11BASE}/include \
			-I${X11BASE}/include/freetype2" \
		LDFLAGS="-L${LOCALBASE}/lib \
			-L${X11BASE}/lib -lXft -pthread"

pre-configure:
	sed -i "s,-O2,,g" ${WRKSRC}/configure

.include <bsd.port.mk>
