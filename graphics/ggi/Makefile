# $OpenBSD: Makefile,v 1.24 2001/12/23 18:36:27 naddy Exp $
# Uses pthreads

COMMENT=	"Generic Graphics Library"
DISTNAME=	libggi-2.0b3
CATEGORIES=	graphics
NEED_VERSION=	1.475
HOMEPAGE=	http://www.ggi-project.org/

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://metalab.unc.edu/pub/ggi/ggi/2_0_beta_3/
EXTRACT_SUFX=	.tar.bz2

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltmain_sh \
		patch-*

LIB_DEPENDS=	gii.0.7,gg.0.7::graphics/gii

USE_X11=	Yes
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
	${INSTALL_DATA} ${WRKSRC}/extensions/misc/libggimisc.conf \
		${PREFIX}/share/examples/ggi/libggimisc.conf.example

.include <bsd.port.mk>
