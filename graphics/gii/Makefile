# $OpenBSD: Makefile,v 1.10 2000/05/22 10:28:51 fgsch Exp $

DISTNAME=       libgii-0.1
CATEGORIES=     graphics
NEED_VERSION=	1.73

MAINTAINER=     todd@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ftp://sunsite.unc.edu/pub/ggi/ggi/2_0_beta_1/ \
		ftp://synergy.caltech.edu/pub/ggi/ggi/2_0_beta_1/ \
		ftp://www.us.ggi-project.org/pub/ggi/ggi/2_0_beta_1/ \
		ftp://gd.tuwien.ac.at/graphics/libs/ggi/ggi/2_0_beta_1/ \
		ftp://ftp.gts.cz/pub/linux/ggi/ggi/2_0_beta_1/ \
		ftp://ftp.via.ecp.fr/pub/ggi/ggi/2_0_beta_1/ \
		ftp://ftp.unina.it/pub/linux/ggi/ggi/2_0_beta_1/ \
		ftp://sunsite.icm.edu.pl/pub/unix/gui/ggi/ggi/2_0_beta_1/

USE_GMAKE=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

FAKE=		yes

DOCDIR=		${PREFIX}/share/doc/gii

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/libgii.conf ${DOCDIR}/libgii.conf.example

.include <bsd.port.mk>
