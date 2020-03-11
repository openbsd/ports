# $OpenBSD: Makefile,v 1.15 2020/03/11 22:27:58 naddy Exp $

COMMENT=	curses development kit

V=		5.0-20060507
DISTNAME=	cdk-${V}
PKGNAME=	cdk-${V:S/-/./}
REVISION =	4

EXTRACT_SUFX=	.tgz

SHARED_LIBS +=	cdk	0.0	# .4.0

CATEGORIES=	devel

HOMEPAGE=	https://invisible-island.net/cdk/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://invisible-mirror.net/archives/cdk/ \
		ftp://ftp.invisible-island.net/cdk/

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-ncurses \
		--with-libtool=${LIBTOOL}

NO_TEST=	Yes

.include <bsd.port.mk>
