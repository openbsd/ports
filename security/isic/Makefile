# $OpenBSD: Makefile,v 1.33 2019/07/12 20:49:03 sthen Exp $

COMMENT=	IP stack integrity checker

DISTNAME=	isic-0.07
REVISION =	0
CATEGORIES=	security

HOMEPAGE=	http://isic.sourceforge.net/

# modified BSD license
PERMIT_PACKAGE=	Yes
WANTLIB=		c lib/libnet-1.1/net=11

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=isic/}
EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	net/libnet/1.1

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include/libnet-1.1 \
		`libnet-config-1.1 --defines`" \
		LIBS="-L${LOCALBASE}/lib/libnet-1.1 -lnet"

NO_TEST=	Yes

.include <bsd.port.mk>
