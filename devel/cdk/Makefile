# $OpenBSD: Makefile,v 1.2 2008/10/15 13:32:53 ajacoutot Exp $

COMMENT=	curses development kit

V=		5.0-20060507
DISTNAME=	cdk-${V}
PKGNAME=	cdk-${V:S/-/./}p0

EXTRACT_SUFX=	.tgz

SHARED_LIBS +=	cdk	0.0	# .4.0

CATEGORIES=	devel

HOMEPAGE=	http://invisible-island.net/cdk/

MAINTAINER=	Pierre-Emmanuel Andre <pea@raveland.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://invisible-island.net/cdk/

USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-ncurses \
		--with-libtool

NO_REGRESS=	Yes

# format tables in man pages
post-build:
	cd ${WRKSRC}/man && for m in *.[1-9] ; do \
		mv $$m $$m.bak && tbl $$m.bak > $$m ; done

.include <bsd.port.mk>
