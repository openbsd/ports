# $OpenBSD: Makefile,v 1.4 2001/05/05 23:11:23 lebel Exp $

COMMENT=	"character set conversion library"

DISTNAME=	libiconv-1.6.1
CATEGORIES=	converters devel
NEED_VERSION=	1.402

HOMEPAGE=	http://clisp.cons.org/~haible/packages-libiconv.html

MAINTAINER=	Vladimir Popov <pva48@mail.ru>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.ilog.fr/pub/Users/haible/gnu/ \
		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	libiconv

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static

SEPARATE_BUILD=	concurrent

.include <bsd.port.mk>
