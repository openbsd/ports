# $OpenBSD: Makefile,v 1.13 2010/04/15 14:58:24 ajacoutot Exp $

COMMENT=	lightweight userspace bandwidth shaper
DISTNAME=	trickle-1.06
PKGNAME=	${DISTNAME}p4
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
