# $OpenBSD: Makefile,v 1.25 2004/11/30 01:06:35 espie Exp $
# Uses pthreads

COMMENT=	"General Input Library (used by libggi)"
DISTNAME=	libgii-0.8.4
CATEGORIES=	graphics

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 c m pthread

MASTER_SITES=	ftp://ftp.ggi-project.org/pub/packages/ggi/ggi/v2.0/
EXTRACT_SUFX=	.src.tar.bz2

USE_X11=	Yes
USE_GMAKE=	Yes

CFLAGS+=	-pthread
SEPARATE_BUILD= concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --enable-mutexes="int"

CONFDIR=	${SYSCONFDIR}/ggi
SUBST_VARS=	CONFDIR

DOCS=	README

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gii
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gii
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/gii
	${INSTALL_DATA} ${WRKBUILD}/libgii.conf \
		${PREFIX}/share/examples/gii/libgii.conf.example
	${INSTALL_DATA} ${WRKDIST}/filter/mouse/mouse \
		${PREFIX}/share/examples/gii/filter_mouse.example
	${INSTALL_DATA} ${WRKDIST}/filter/keytrans/keytrans \
		${PREFIX}/share/examples/gii/filter_keytrans.example

.include <bsd.port.mk>
