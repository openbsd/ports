# $OpenBSD: Makefile,v 1.9 2000/06/26 08:51:39 brad Exp $
# KAME Id: Makefile,v 1.5 1999/09/13 16:27:41 itojun Exp

DISTNAME=	zebra-0.86
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.zebra.org/pub/zebra/

HOMEPAGE=	http://www.zebra.org/

MAINTAINER=	itojun@itojun.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# you might need debugging, it's a developer release !
#CFLAGS+=	-g

SYSCONFDIR=	${PREFIX}/lib/zebra
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
