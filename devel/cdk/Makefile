# $OpenBSD: Makefile,v 1.11 2016/04/12 11:41:02 sthen Exp $

COMMENT=	curses development kit

V=		5.0-20060507
DISTNAME=	cdk-${V}
PKGNAME=	cdk-${V:S/-/./}
REVISION =	2

EXTRACT_SUFX=	.tgz

SHARED_LIBS +=	cdk	0.0	# .4.0

CATEGORIES=	devel

HOMEPAGE=	http://invisible-island.net/cdk/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://invisible-mirror.net/archives/cdk/ \
		ftp://invisible-island.net/cdk/

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-ncurses \
		--with-libtool=${LIBTOOL}
USE_GROFF =	Yes

NO_TEST=	Yes

# format tables in man pages
post-build:
	cd ${WRKSRC}/man && for m in *.[1-9] ; do \
		mv $$m $$m.bak && tbl $$m.bak > $$m ; done

.include <bsd.port.mk>
