# $OpenBSD: Makefile,v 1.31 2013/03/11 11:41:25 espie Exp $

COMMENT=	IP stack integrity checker

DISTNAME=	isic-0.07
REVISION =	0
CATEGORIES=	security

HOMEPAGE=	http://isic.sourceforge.net/

# modified BSD license
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c lib/libnet-1.1/net=11

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=isic/}
EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	net/libnet/1.1

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include/libnet-1.1 \
		`libnet-config-1.1 --defines`" \
		LIBS="-L${LOCALBASE}/lib/libnet-1.1 -lnet"

USE_GROFF =	Yes
NO_TEST=	Yes

.include <bsd.port.mk>
