# $OpenBSD: Makefile,v 1.39 2009/08/10 06:31:44 kili Exp $
# Uses pthreads

COMMENT=	Generic Graphics Library
DISTNAME=	libggi-2.1.0
PKGNAME=	${DISTNAME}p5
SHARED_LIBS=	ggi	2.1

CATEGORIES=	graphics

HOMEPAGE=	http://www.ggi-project.org/
MAINTAINER=	Todd T. Fries <todd@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xdmcp Xext Xxf86dga Xxf86vm c m ncurses pthread \
		pthread-stubs xcb

MASTER_SITES=	http://www.ggi-project.org/ftp/ggi/v2.1/
EXTRACT_SUFX=	.src.tar.bz2

LIB_DEPENDS=	gii.>=0.9,gg:libgii->=0.9:graphics/gii

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CFLAGS+=	-pthread
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --disable-aa \
		--with-gii="${PREFIX}"

DOCS=	README

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ggi
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ggi
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/ggi
	${INSTALL_DATA} ${WRKSRC}/libggi.conf \
		${PREFIX}/share/examples/ggi/libggi.conf.example

.include <bsd.port.mk>
