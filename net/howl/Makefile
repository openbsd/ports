# $OpenBSD: Makefile,v 1.1.1.1 2005/01/21 02:11:57 jolan Exp $

COMMENT=	"zeroconf networking implementation"
DISTNAME=	howl-0.9.8
CATEGORIES=	net
MASTER_SITES=	http://www.porchdogsoft.com/download/

HOMEPAGE=	http://www.porchdogsoft.com/products/howl/

# BSD/APSL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig

WANTLIB=	c pthread

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LIBS="-pthread"

.include <bsd.port.mk>
