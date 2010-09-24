# $OpenBSD: Makefile,v 1.4 2010/09/24 15:32:33 sthen Exp $

SHARED_ONLY=		Yes

COMMENT=		interface to the Fast Artificial Neural Network library 

DISTNAME=		AI-FANN-0.10
REVISION=		0
CATEGORIES=		math

MODULES=		cpan

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=		doublefann::math/fann

CONFIGURE_ARGS+=	FANN_LIB="${LOCALBASE}/lib" \
			FANN_INCLUDE"${LOCALBASE}/include"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-FANN
	${INSTALL_DATA} ${WRKSRC}/samples/*.pl ${PREFIX}/share/examples/p5-FANN

.include <bsd.port.mk>
