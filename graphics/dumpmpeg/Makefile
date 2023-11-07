COMMENT=	dump frames from mpeg-1 movies

VERSION=	0.6
DISTNAME=	dumpmpeg-${VERSION}
REVISION =	4
CATEGORIES=	graphics x11

HOMEPAGE=	https://sourceforge.net/projects/dumpmpeg/

PERMIT_PACKAGE=	Yes


SITES=		${SITE_SOURCEFORGE:=dumpmpeg/}

LIB_DEPENDS =	devel/smpeg
WANTLIB =	SDL c pthread smpeg>=1.3

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
