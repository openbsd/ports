# $OpenBSD: Makefile,v 1.13 2014/04/13 01:01:39 naddy Exp $

SHARED_ONLY=		Yes

COMMENT=		interface to the Fast Artificial Neural Network library

DISTNAME=		AI-FANN-0.10
REVISION=		3
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
