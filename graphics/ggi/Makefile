# $OpenBSD: Makefile,v 1.26 2004/01/20 13:50:53 todd Exp $
# Uses pthreads

COMMENT=	"Generic Graphics Library"
DISTNAME=	libggi-2.0.4
CATEGORIES=	graphics

HOMEPAGE=	http://www.ggi-project.org/
MAINTAINER=	Todd T. Fries <todd@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.ggi-project.org/pub/packages/ggi/ggi/v2.0/
EXTRACT_SUFX=	.src.tar.bz2

LIB_DEPENDS=	gii.0.8::graphics/gii

USE_X11=	Yes
USE_GMAKE=	Yes

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
