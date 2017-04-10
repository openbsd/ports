# $OpenBSD: Makefile,v 1.10 2017/04/10 11:46:22 sthen Exp $

COMMENT=		three layer backpropagation neural network library

DISTNAME=		libneural-1.0.3
REVISION=		2
SHARED_LIBS +=		neural 0.0      # .0.0
CATEGORIES=		math devel

HOMEPAGE=		https://zworykin.elec.uow.edu.au/~daniel/Projects/Software/libneural/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}

WANTLIB += m ${LIBCXX}


CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		ac_cv_prog_CC="${CC}"

post-extract:
	chmod +x ${WRKSRC}/configure

.include <bsd.port.mk>
