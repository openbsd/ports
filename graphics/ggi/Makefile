# $OpenBSD: Makefile,v 1.17 2000/10/22 14:03:18 espie Exp $

DISTNAME=	libggi-2.0b2.1
CATEGORIES=	graphics
NEED_VERSION=	1.330
MASTER_SITES=	ftp://ftp.ggi-project.org/pub/ggi/ggi/2_0_beta_2.1/

LIB_DEPENDS=	gii.0.::graphics/gii

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
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
	${INSTALL_DATA} ${WRKSRC}/extensions/misc/libggimisc.conf \
		${PREFIX}/share/examples/ggi/libggimisc.conf.example

.include <bsd.port.mk>
