# $OpenBSD: Makefile,v 1.11 2000/05/22 11:40:05 fgsch Exp $

DISTNAME=       libgii-0.6
CATEGORIES=     graphics
NEED_VERSION=	1.73

MAINTAINER=     todd@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.ggi-project.org/pub/ggi/ggi/2_0_beta_2.1/

USE_GMAKE=	Yes
GNU_CONFIGURE=	Yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

FAKE=		Yes

DOCDIR=		${PREFIX}/share/doc/gii

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/libgii.conf ${DOCDIR}/libgii.conf.example

.include <bsd.port.mk>
