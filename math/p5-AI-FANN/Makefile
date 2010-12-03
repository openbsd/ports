# $OpenBSD: Makefile,v 1.9 2010/12/03 11:45:39 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		interface to the Fast Artificial Neural Network library 

DISTNAME=		AI-FANN-0.10
REVISION=		2
CATEGORIES=		math

MODULES=		cpan
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS =		math/fann
WANTLIB =		doublefann

CONFIGURE_ARGS+=	FANN_LIB="${LOCALBASE}/lib" \
			FANN_INCLUDE"${LOCALBASE}/include"

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	samples

.include <bsd.port.mk>
