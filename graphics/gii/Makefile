# $OpenBSD: Makefile,v 1.12 2000/06/11 08:51:10 fgsch Exp $

DISTNAME=       libgii-0.6
CATEGORIES=     graphics
NEED_VERSION=	1.301

MAINTAINER=     todd@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.ggi-project.org/pub/ggi/ggi/2_0_beta_2.1/

USE_GMAKE=	Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

DOCDIR=		${PREFIX}/share/doc/gii

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/libgii.conf ${DOCDIR}/libgii.conf.example

.include <bsd.port.mk>
