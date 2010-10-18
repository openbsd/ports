# $OpenBSD: Makefile,v 1.6 2010/10/18 20:52:06 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		interface to the Fast Artificial Neural Network library 

DISTNAME=		AI-FANN-0.10
REVISION=		1
CATEGORIES=		math

MODULES=		cpan
USE_GROFF =	Yes

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
