# $OpenBSD: Makefile,v 1.1.1.1 2001/03/12 01:32:04 naddy Exp $

DISTNAME=	libiconv-1.6
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

SEPARATE_BUILD=	Yes

.include <bsd.port.mk>
