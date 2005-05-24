# $OpenBSD: Makefile,v 1.22 2005/05/24 00:16:28 mjc Exp $

COMMENT=	"IP stack integrity checker"

DISTNAME=	isic-0.05
CATEGORIES=	security

MASTER_SITES=	http://www.packetfactory.net/projects/ISIC/

HOMEPAGE=	http://www.packetfactory.net/projects/ISIC/

EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	lib/libnet-1.0/net.=0:libnet-1.0*:net/libnet/1.0

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CFLAGS="${CFLAGS} -I${LOCALBASE}/include/libnet-1.0 `libnet-config-1.0 --defines`" \
			LIBS="-L${LOCALBASE}/lib/libnet-1.0 -lnet"
NO_REGRESS=	Yes

post-install:
	@strip ${PREFIX}/bin/{esic,icmpsic,isic,tcpsic,udpsic}

.include <bsd.port.mk>
