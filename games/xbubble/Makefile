# $OpenBSD: Makefile,v 1.2 2004/11/28 22:41:24 espie Exp $

COMMENT=	"x bust a move clone" 

VERSION=	0.2
DISTNAME=	xbubble-${VERSION}
CATEGORIES=	games x11

HOMEPAGE=	http://savannah.gnu.org/projects/xbubble/

MAINTAINER=	Lurene Grenier <lurene@daemonkitty.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 c m z

MASTER_SITES=		http://freesoftware.fsf.org/download/xbubble/

LIB_DEPENDS=		png.2::graphics/png

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	GNU

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
