# $OpenBSD: Makefile,v 1.8 2000/03/17 00:53:49 turan Exp $

DISTNAME=       libgii-0.1
CATEGORIES=     graphics
NEED_VERSION=	1.73

MAINTAINER=     todd@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ftp://sunsite.unc.edu:/pub/ggi/ggi/2_0_beta_1/ \
		ftp://synergy.caltech.edu:/pub/ggi/ggi/2_0_beta_1/ \
		ftp://www.us.ggi-project.org:/pub/ggi/ggi/2_0_beta_1/ \
		ftp://gd.tuwien.ac.at:/graphics/libs/ggi/ggi/2_0_beta_1/ \
		ftp://ftp.gts.cz:/pub/linux/ggi/ggi/2_0_beta_1/ \
		ftp://ftp.via.ecp.fr:/pub/ggi/ggi/2_0_beta_1/ \
		ftp://ftp.unina.it:/pub/linux/ggi/ggi/2_0_beta_1/ \
		ftp://sunsite.icm.edu.pl:/pub/unix/gui/ggi/ggi/2_0_beta_1/

USE_GMAKE=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

docdir=${PREFIX}/share/doc/gii

post-install:
	mkdir -p ${docdir}
	${INSTALL_DATA} ${WRKSRC}/README ${docdir}
	${INSTALL_DATA} ${WRKSRC}/libgii.conf ${docdir}/libgii.conf.example
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
