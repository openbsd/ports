# $OpenBSD: Makefile,v 1.19 2004/11/21 22:53:58 espie Exp $

COMMENT=	"converter to/from base64 encoding"

DISTNAME=	base64-1.3
CATEGORIES=	converters

HOMEPAGE=	http://www.fourmilab.ch/webtools/base64/

# public domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE=gnu
ALL_TARGET=	prog
REGRESS_TARGET=	wringer

.include <bsd.port.mk>
