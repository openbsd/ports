# $OpenBSD: Makefile,v 1.9 2017/02/27 19:46:37 jca Exp $

COMMENT=		three layer backpropagation neural network library

DISTNAME=		libneural-1.0.3
REVISION=		2
SHARED_LIBS +=		neural 0.0      # .0.0
CATEGORIES=		math devel

HOMEPAGE=		https://zworykin.elec.uow.edu.au/~daniel/Projects/Software/libneural/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}

WANTLIB += m stdc++


CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		ac_cv_prog_CC="${CC}"

post-extract:
	chmod +x ${WRKSRC}/configure

.include <bsd.port.mk>
