# $OpenBSD: Makefile,v 1.3 1999/02/18 02:37:29 marc Exp $
#

DISTNAME=       libgii-0.1
CATEGORIES=     graphics
MASTER_SITES=   ftp://sunsite.unc.edu:/pub/ggi/ggi/2_0_beta_1/ \
		ftp://synergy.caltech.edu:/pub/ggi/ggi/2_0_beta_1/ \
		ftp://www.us.ggi-project.org:/pub/ggi/ggi/2_0_beta_1/ \
		ftp://gd.tuwien.ac.at:/graphics/libs/ggi/ggi/2_0_beta_1/ \
		ftp://ftp.gts.cz:/pub/linux/ggi/ggi/2_0_beta_1/ \
		ftp://ftp.via.ecp.fr:/pub/ggi/ggi/2_0_beta_1/ \
		ftp://ftp.unina.it:/pub/linux/ggi/ggi/2_0_beta_1/ \
		ftp://sunsite.icm.edu.pl:/pub/unix/gui/ggi/ggi/2_0_beta_1/

MAINTAINER=     todd@openbsd.org

USE_GMAKE=	YES
GNU_CONFIGURE=	YES
.if !defined(NO_SHARED_LIBS)
CONFIGURE_ARGS+=       --enable-shared
.endif
CONFIGURE_ARGS+=       --enable-static

docdir=${PREFIX}/share/doc/gii

post-install:
	${MKDIR} -p ${docdir}
	${INSTALL_DATA} ${WRKSRC}/README ${docdir}
	${INSTALL_DATA} ${WRKSRC}/libgii.conf ${docdir}/libgii.conf.example

.include <bsd.port.mk>
