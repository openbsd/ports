# $OpenBSD: Makefile,v 1.6 2001/11/05 11:00:19 shell Exp $

COMMENT=	"provides UTF-8 locale support"

DISTNAME=	libutf8-0.7.3
CATEGORIES=     misc devel
NEED_VERSION=	1.488
MASTER_SITES=	ftp://ftp.ilog.fr/pub/Users/haible/utf8/ \
		ftp://ftp.shellhung.org/pub/OpenBSD/packages/devel/

MAINTAINER=	Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static

REGRESS_TARGET=	test

.include <bsd.port.mk>
