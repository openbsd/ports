# $OpenBSD: Makefile,v 1.6 2013/03/21 08:46:33 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		three layer backpropagation neural network library

DISTNAME=		libneural-1.0.3
REVISION=		1
SHARED_LIBS +=	neural               0.0      # .0.0
CATEGORIES=		math devel

HOMEPAGE=		http://ieee.uow.edu.au/~daniel/software/libneural/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}

WANTLIB += m stdc++


CONFIGURE_STYLE=	gnu

post-extract:
	chmod +x ${WRKSRC}/configure

.include <bsd.port.mk>
