# $OpenBSD: Makefile,v 1.5 2010/10/03 15:20:21 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		interface to the Fast Artificial Neural Network library 

DISTNAME=		AI-FANN-0.10
REVISION=		1
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

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	samples

.include <bsd.port.mk>
