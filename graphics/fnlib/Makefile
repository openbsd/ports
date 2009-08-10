# $OpenBSD: Makefile,v 1.31 2009/08/10 06:31:44 kili Exp $

COMMENT=	color font rendering library for X

DISTNAME=	fnlib-0.5
PKGNAME=	${DISTNAME}p2
SHARED_LIBS=	Fnlib	5.0
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=enlightenment/}

LIB_DEPENDS=	Imlib.>=19::graphics/imlib

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext jpeg m png pthread-stubs tiff ungif \
		xcb z

USE_X11=	Yes
USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fnlib
	mv -f ${WRKINST}${SYSCONFDIR}/* ${PREFIX}/share/examples/fnlib

.include <bsd.port.mk>
