# $OpenBSD: Makefile,v 1.1.1.1 2008/09/30 09:22:58 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		interface to the Fast Artificial Neural Network library  

DISTNAME=		AI-FANN-0.08
CATEGORIES=		math

MODULES=		cpan

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=		doublefann::math/fann

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.PL

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-FANN
	${INSTALL_DATA} ${WRKSRC}/samples/*.pl ${PREFIX}/share/examples/p5-FANN

.include <bsd.port.mk>
