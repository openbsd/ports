# $OpenBSD: Makefile,v 1.2 2001/02/22 00:34:29 avsm Exp $

DISTNAME=	libutf8-0.7.3
CATEGORIES=     devel misc
NEED_VERSION=	1.352
MASTER_SITES=	ftp://ftp.shellhung.org/pub/OpenBSD/packages/devel/

MAINTAINER=	Shell Hung <i@shellhung.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} --enable-static

.include <bsd.port.mk>
