# $OpenBSD: Makefile,v 1.1.1.1 1998/09/14 20:37:04 marc Exp $
# $FreeBSD: Makefile,v 1.10 1998/09/03 00:05:11 jmacd Exp $
#
DISTNAME=	xdelta-0.23
CATEGORIES=	misc

MAINTAINER=	felix@mamba.pond.sub.org

MASTER_SITES=	ftp://ftp.xcf.berkeley.edu/pub/xdelta/

BUILD_DEPENDS=  ${PREFIX}/lib/libgdbm.a:${PORTSDIR}/databases/gdbm

GNU_CONFIGURE=	yes
CONFIGURE_ENV+=	CC='gcc -O3 -I${PREFIX}/include' LDFLAGS='-L${PREFIX}/lib'

.include <bsd.port.mk>
