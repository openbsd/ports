# $OpenBSD: Makefile,v 1.1.1.1 2006/04/23 19:49:03 steven Exp $

COMMENT=	"configurable analog clock for X11"
DISTNAME=	xtu-1.3
CATEGORIES=	x11 sysutils

HOMEPAGE=	http://www.core.de/~coto/projects/xtu/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# BSD license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

WANTLIB=	X11 Xext c
USE_X11=	Yes
CONFIGURE_STYLE=imake
NO_REGRESS=	Yes

FLAVORS=	imlib
FLAVOR?=

.if ${FLAVOR:L:Mimlib}
LIB_DEPENDS=	Imlib::graphics/imlib
WANTLIB+=	ICE SM m z jpeg png tiff ungif
XTUFLAGS=	"-DUSE_IMLIB ${CFLAGS} `imlib-config --cflags`"
MAKE_FLAGS+=	LOCAL_LIBRARIES="`imlib-config --libs`"
.else
XTUFLAGS=	"-DUSE_XPM ${CFLAGS} -I${X11BASE}/include"
WANTLIB+=	Xpm
.endif

MAKE_FLAGS+=	CC=${CC} CDEBUGFLAGS= CFLAGS=${XTUFLAGS}

.include <bsd.port.mk>
