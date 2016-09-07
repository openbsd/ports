# $OpenBSD: Makefile,v 1.42 2016/09/07 16:37:45 sthen Exp $

COMMENT=	MS-Explorer like file manager for X

DISTNAME=	xfe-1.42
CATEGORIES=	x11

HOMEPAGE=	http://roland65.free.fr/xfe/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += FOX-1.6 X11 Xft Xrandr c fontconfig freetype m png pthread
WANTLIB += stdc++ util z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xfe/}

LIB_DEPENDS=	devel/fox

BUILD_DEPENDS=	textproc/intltool
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
