# $OpenBSD: Makefile,v 1.2 2001/03/15 16:12:36 naddy Exp $

DISTNAME=	libiconv-1.6.1
CATEGORIES=	converters devel
NEED_VERSION=	1.341
MASTER_SITES=	ftp://ftp.ilog.fr/pub/Users/haible/gnu/

HOMEPAGE=	http://clisp.cons.org/~haible/packages-libiconv.html

MAINTAINER=	Vladimir Popov <pva48@mail.ru>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static

SEPARATE_BUILD=	concurrent

.include <bsd.port.mk>
