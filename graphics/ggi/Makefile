# $OpenBSD: Makefile,v 1.4 1999/02/21 04:26:10 marc Exp $
#

DISTNAME=       libggi-2.0b1
CATEGORIES=     graphics

NEED_VERSION=	1.64

MAINTAINER=     todd@openbsd.org

MASTER_SITES=   ftp://sunsite.unc.edu:/pub/ggi/ggi/2_0_beta_1/ \
		ftp://synergy.caltech.edu:/pub/ggi/ggi/2_0_beta_1/ \
		ftp://www.us.ggi-project.org:/pub/ggi/ggi/2_0_beta_1/ \
		ftp://gd.tuwien.ac.at:/graphics/libs/ggi/ggi/2_0_beta_1/ \
		ftp://ftp.gts.cz:/pub/linux/ggi/ggi/2_0_beta_1/ \
		ftp://ftp.via.ecp.fr:/pub/ggi/ggi/2_0_beta_1/ \
		ftp://ftp.unina.it:/pub/linux/ggi/ggi/2_0_beta_1/ \
		ftp://sunsite.icm.edu.pl:/pub/unix/gui/ggi/ggi/2_0_beta_1/

USE_GMAKE=	YES
GNU_CONFIGURE=	YES
.if !defined(NO_SHARED_LIBS)
CONFIGURE_ARGS+=       --enable-shared
.endif

LIB_DEPENDS=	gii\\.0\\.:${PORTSDIR}/graphics/gii

post-install:
	${MKDIR} -p ${docdir}
	${INSTALL_DATA} ${WRKSRC}/README ${docdir}/README
	${INSTALL_DATA} ${WRKSRC}/libggi.conf ${docdir}/libggi.conf.example
	${INSTALL_DATA} ${WRKSRC}/extensions/misc/libggimisc.conf \
		${docdir}/libggimisc.conf.example

docdir=${PREFIX}/share/doc/ggi

.include <bsd.port.mk>

CONFIGURE_ARGS+=       --enable-static --with-gii=${PREFIX}/

docdir=${PREFIX}/share/doc/ggi
