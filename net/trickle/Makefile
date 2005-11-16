# $OpenBSD: Makefile,v 1.10 2005/11/16 23:23:34 naddy Exp $

COMMENT=	"lightweight userspace bandwidth shaper"
DISTNAME=	trickle-1.06
PKGNAME=	${DISTNAME}p1
CATEGORIES=	net
HOMEPAGE=	"http://monkey.org/~marius/pages/?page=trickle"
MASTER_SITES=	http://monkey.org/~marius/trickle/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c event

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
