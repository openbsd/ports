# $OpenBSD: Makefile,v 1.1.1.1 2008/09/17 13:22:05 ajacoutot Exp $

COMMENT=	curses development kit

V=		5.0-20060507
DISTNAME=	cdk
PKGNAME=	${DISTNAME}-${V:S/-/./}
WRKDIST=	${WRKDIR}/${DISTNAME}-${V}

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

.include <bsd.port.mk>
