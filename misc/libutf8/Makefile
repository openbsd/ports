# $OpenBSD: Makefile,v 1.19 2010/11/05 08:24:50 sthen Exp $

COMMENT=	provides UTF-8 locale support

DISTNAME=	libutf8-0.8
REVISION=	0
SHARED_LIBS=	utf8	1.0
CATEGORIES=     misc devel

HOMEPAGE=	http://www.haible.de/bruno/packages-libutf8.html

MASTER_SITES= 	ftp://ftp.ilog.fr/pub/Users/haible/utf8/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=	Yes
USE_GROFF =	Yes

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autoconf

.include <bsd.port.mk>
