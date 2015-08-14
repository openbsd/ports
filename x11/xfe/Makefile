# $OpenBSD: Makefile,v 1.37 2015/08/14 03:42:15 bcallah Exp $

COMMENT=	MS-Explorer like file manager for X

DISTNAME=	xfe-1.40.1
CATEGORIES=	x11

HOMEPAGE=	http://roland65.free.fr/xfe/
MAINTAINER=	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += FOX-1.6 X11 Xft Xrandr c freetype m png pthread stdc++
WANTLIB += util z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xfe/}

MODULES=	devel/gettext textproc/intltool
LIB_DEPENDS =	devel/fox

RUN_DEPENDS=	devel/desktop-file-utils

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/fox-1.6 \
			-I${X11BASE}/include \
			-I${X11BASE}/include/freetype2" \
		LDFLAGS="-L${LOCALBASE}/lib \
			-L${X11BASE}/lib -lXft -pthread"

MAKE_FLAGS=	CXXFLAGS="${CXXFLAGS} -DHAVE_XFT_H"

pre-configure:
	sed -i "s,-O2,,g" ${WRKSRC}/configure

.include <bsd.port.mk>
