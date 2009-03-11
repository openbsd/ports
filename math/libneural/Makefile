# $OpenBSD: Makefile,v 1.2 2009/03/11 09:16:16 sthen Exp $

SHARED_ONLY=		Yes

COMMENT=		three layer backpropagation neural network library

DISTNAME=		libneural-1.0.3
PKGNAME=		${DISTNAME}p0
SHARED_LIBS +=	neural               0.0      # .0.0
CATEGORIES=		math devel

HOMEPAGE=		http://ieee.uow.edu.au/~daniel/software/libneural/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

WANTLIB += m

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu

post-extract:
	chmod +x ${WRKSRC}/configure

.include <bsd.port.mk>
