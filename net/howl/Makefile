# $OpenBSD: Makefile,v 1.6 2007/09/15 22:36:53 merdely Exp $

COMMENT=	zeroconf networking implementation
DISTNAME=	howl-1.0.0
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=	howl		0.0 \
		mDNSResponder	0.0

CATEGORIES=	net
MASTER_SITES=	http://www.porchdogsoft.com/download/

HOMEPAGE=	http://www.porchdogsoft.com/products/howl/

# BSD/APSL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	c pthread

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
