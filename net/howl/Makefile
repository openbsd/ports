# $OpenBSD: Makefile,v 1.2 2005/07/25 19:22:14 aanriot Exp $

COMMENT=	"zeroconf networking implementation"
DISTNAME=	howl-1.0.0
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

.include <bsd.port.mk>
