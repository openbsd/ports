# $OpenBSD: Makefile,v 1.15 2000/05/22 12:17:09 fgsch Exp $

BROKEN=		installs files automatically in /etc

DISTNAME=       libggi-2.0b2.1
CATEGORIES=     graphics
NEED_VERSION=	1.230

MAINTAINER=     todd@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.ggi-project.org/pub/ggi/ggi/2_0_beta_2.1/

LIB_DEPENDS=	gii.0.::graphics/gii

USE_GMAKE=	Yes
GNU_CONFIGURE=	Yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --with-gii=${PREFIX}/

FAKE=		Yes

DOCDIR=		${PREFIX}/share/doc/ggi

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCDIR}/README
	${INSTALL_DATA} ${WRKSRC}/libggi.conf ${DOCDIR}/libggi.conf.example
	${INSTALL_DATA} ${WRKSRC}/extensions/misc/libggimisc.conf \
	  ${DOCDIR}/libggimisc.conf.example

.include <bsd.port.mk>
