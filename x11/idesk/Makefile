# $OpenBSD: Makefile,v 1.21 2019/07/12 20:51:14 sthen Exp $

COMMENT=		put clickable icons on the desktop

DISTNAME=		idesk-0.7.5
REVISION =		7
CATEGORIES=		x11

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=idesk/}

HOMEPAGE=		http://idesk.sourceforge.net/

# BSD
PERMIT_PACKAGE=	Yes

EXTRACT_SUFX=		.tar.bz2

WANTLIB=		ICE ${COMPILER_LIBCXX} c X11 Xrender Xau Xdmcp expat z m Imlib2 \
			SM Xft freetype fontconfig Xext xcb

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=		graphics/imlib2

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
