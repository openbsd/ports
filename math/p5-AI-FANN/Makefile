# $OpenBSD: Makefile,v 1.15 2015/07/16 23:57:25 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		interface to the Fast Artificial Neural Network library

DISTNAME=		AI-FANN-0.10
REVISION=		5
CATEGORIES=		math

MODULES=		cpan

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c doublefann

LIB_DEPENDS =		math/fann

CONFIGURE_ARGS+=	FANN_LIB="${LOCALBASE}/lib" \
			FANN_INCLUDE"${LOCALBASE}/include"

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	samples

.include <bsd.port.mk>
