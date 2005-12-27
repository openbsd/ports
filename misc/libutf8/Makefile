# $OpenBSD: Makefile,v 1.15 2005/12/27 19:17:46 brad Exp $

COMMENT=	"provides UTF-8 locale support"

DISTNAME=	libutf8-0.8
SHARED_LIBS=		utf8	1.0
MODGNU_SHARED_LIBS=	utf8	''
CATEGORIES=     misc devel

MASTER_SITES= 	ftp://ftp.ilog.fr/pub/Users/haible/utf8/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autoconf

.include <bsd.port.mk>
