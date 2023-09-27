COMMENT=		put clickable icons on the desktop

DISTNAME=		idesk-0.7.5
REVISION =		8
CATEGORIES=		x11

SITES=			${SITE_SOURCEFORGE:=idesk/}

HOMEPAGE=		http://idesk.sourceforge.net/

# BSD
PERMIT_PACKAGE=	Yes

EXTRACT_SUFX=		.tar.bz2

WANTLIB += ${COMPILER_LIBCXX} ICE Imlib2 SM X11 Xext Xft c m

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=		graphics/imlib2

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
