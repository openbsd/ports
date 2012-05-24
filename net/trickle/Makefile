# $OpenBSD: Makefile,v 1.16 2012/05/24 18:40:49 gonzalo Exp $

COMMENT=	lightweight userspace bandwidth shaper
DISTNAME=	trickle-1.06
REVISION=	5
CATEGORIES=	net

HOMEPAGE=	http://monkey.org/~marius/trickle/
MASTER_SITES=	${HOMEPAGE}

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c event

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
