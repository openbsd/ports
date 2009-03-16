# $OpenBSD: Makefile,v 1.26 2009/03/16 11:07:29 sthen Exp $

COMMENT=	IP stack integrity checker

DISTNAME=	isic-0.07
PKGNAME=	${DISTNAME}p0
CATEGORIES=	security

HOMEPAGE=	http://isic.sourceforge.net/

# modified BSD license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=isic/}
EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	lib/libnet-1.1/net.=11:libnet->=1.1,<1.2:net/libnet/1.1

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include/libnet-1.1 \
		`libnet-config-1.1 --defines`" \
		LIBS="-L${LOCALBASE}/lib/libnet-1.1 -lnet"

NO_REGRESS=	Yes

.include <bsd.port.mk>
