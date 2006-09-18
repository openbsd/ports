# $OpenBSD: Makefile,v 1.11 2006/09/18 21:10:11 steven Exp $

COMMENT=	"lightweight userspace bandwidth shaper"
DISTNAME=	trickle-1.06
PKGNAME=	${DISTNAME}p2
CATEGORIES=	net
HOMEPAGE=	"http://monkey.org/~marius/pages/?page=trickle"
MASTER_SITES=	http://monkey.org/~marius/trickle/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c event

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
