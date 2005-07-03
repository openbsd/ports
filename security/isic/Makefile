# $OpenBSD: Makefile,v 1.23 2005/07/03 18:02:12 aanriot Exp $

COMMENT=	"IP stack integrity checker"

DISTNAME=	isic-0.06
CATEGORIES=	security

HOMEPAGE=	http://www.packetfactory.net/projects/ISIC/

# modified BSD license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	lib/libnet-1.1/net.=11:libnet-1.1*:net/libnet/1.1

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include/libnet-1.1 `libnet-config-1.1 --defines`" \
		LIBS="-L${LOCALBASE}/lib/libnet-1.1 -lnet"

NO_REGRESS=	Yes

.include <bsd.port.mk>
