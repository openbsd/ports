# $OpenBSD: Makefile,v 1.21 2001/12/23 18:18:11 naddy Exp $
# Uses pthreads

COMMENT=	"General Input Library (used by libggi)"
DISTNAME=	libgii-0.7
CATEGORIES=	graphics
NEED_VERSION=	1.475

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://metalab.unc.edu/pub/ggi/ggi/2_0_beta_3/
EXTRACT_SUFX=	.tar.bz2

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltmain_sh \
		patch-*

USE_X11=	Yes

CFLAGS+=	-pthread
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
