# $OpenBSD: Makefile,v 1.22 2002/12/28 19:10:50 todd Exp $
# Uses pthreads

COMMENT=	"General Input Library (used by libggi)"
DISTNAME=	libgii-0.8.2
CATEGORIES=	graphics

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.ggi-project.org/pub/ggi/ggi/v2.0/
EXTRACT_SUFX=	.src.tar.bz2

USE_X11=	Yes

CFLAGS+=	-pthread
SEPARATE_BUILD= concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --enable-mutexes="int"

DOCS=	README

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gii
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gii
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/gii
	${INSTALL_DATA} ${WRKBUILD}/libgii.conf \
		${PREFIX}/share/examples/gii/libgii.conf.example

.include <bsd.port.mk>
