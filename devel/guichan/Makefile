# $OpenBSD: Makefile,v 1.8 2013/02/03 14:48:03 bcallah Exp $

COMMENT=	C++ GUI library designed for games

DISTNAME=	guichan-0.8.2
CATEGORIES=	devel games

HOMEPAGE=	http://guichan.sourceforge.net/

MAINTAINER=	Brian Callahan <bcallah@openbsd.org>

SHARED_LIBS +=	guichan_opengl	0.1	# .1.0
SHARED_LIBS +=	guichan_sdl	0.1	# .1.0
SHARED_LIBS +=	guichan		0.1	# .1.0

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://guichan.googlecode.com/files/

WANTLIB += m stdc++

BUILD_DEPENDS=	devel/sdl-image

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-allegro=no

.include <bsd.port.mk>
