# $OpenBSD: Makefile,v 1.12 2000/03/19 16:43:40 espie Exp $

BROKEN=		installs files automatically in /etc

DISTNAME=       libggi-2.0b1
CATEGORIES=     graphics
NEED_VERSION=	1.223

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

LIB_DEPENDS=	gii.0.:graphics/gii

USE_GMAKE=	Yes
GNU_CONFIGURE=	Yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --with-gii=${PREFIX}/

post-install:
	mkdir -p ${docdir}
	${INSTALL_DATA} ${WRKSRC}/README ${docdir}/README
	${INSTALL_DATA} ${WRKSRC}/libggi.conf ${docdir}/libggi.conf.example
	${INSTALL_DATA} ${WRKSRC}/extensions/misc/libggimisc.conf \
		${docdir}/libggimisc.conf.example
	${LDCONFIG} -m ${PREFIX}/lib

docdir=${PREFIX}/share/doc/ggi

.include <bsd.port.mk>
