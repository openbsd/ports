# $OpenBSD: Makefile,v 1.10 2012/08/23 15:50:05 sthen Exp $

SHARED_ONLY=		Yes

COMMENT=		interface to the Fast Artificial Neural Network library 

DISTNAME=		AI-FANN-0.10
REVISION=		3
CATEGORIES=		math

MODULES=		cpan
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c doublefann

LIB_DEPENDS =		math/fann

CONFIGURE_ARGS+=	FANN_LIB="${LOCALBASE}/lib" \
			FANN_INCLUDE"${LOCALBASE}/include"

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	samples

.include <bsd.port.mk>
