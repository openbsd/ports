# $OpenBSD: Makefile,v 1.16 2001/03/26 16:03:57 todd Exp $

COMMENT=	"General Input Library (used by libggi)"
DISTNAME=	libgii-0.7
CATEGORIES=	graphics
NEED_VERSION=	1.364
MASTER_SITES=	ftp://ftp.ggi-project.org/pub/ggi/ggi/2_0_beta_3/

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
EXTRACT_SUFX=		.tar.bz2
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --enable-mutexes="int"

DOCS=	README

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gii
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gii
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/gii
	${INSTALL_DATA} ${WRKSRC}/libgii.conf \
		${PREFIX}/share/examples/gii/libgii.conf.example

.include <bsd.port.mk>
