# $OpenBSD: Makefile,v 1.1.1.1 2001/02/08 20:05:21 todd Exp $

DISTNAME=	libutf8-0.7.3
CATEGORIES=     devel
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
