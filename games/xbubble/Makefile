# $OpenBSD: Makefile,v 1.5 2007/09/15 18:01:03 simon Exp $

COMMENT=	x bust a move clone

VERSION=	0.2
DISTNAME=	xbubble-${VERSION}
CATEGORIES=	games x11

HOMEPAGE=	http://savannah.gnu.org/projects/xbubble/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 c m z

MASTER_SITES=		http://freesoftware.fsf.org/download/xbubble/

LIB_DEPENDS=		png.>=2::graphics/png

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	GNU

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
