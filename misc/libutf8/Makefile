# $OpenBSD: Makefile,v 1.20 2011/03/02 07:14:40 ajacoutot Exp $

COMMENT=	provides UTF-8 locale support

DISTNAME=	libutf8-0.8.1
SHARED_LIBS=	utf8	1.0
CATEGORIES=     misc devel

HOMEPAGE=	http://www.haible.de/bruno/packages-libutf8.html

MASTER_SITES= 	http://www.haible.de/bruno/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=	Yes
USE_GROFF =	Yes

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autoconf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libutf8
	${INSTALL_DATA} ${WRKSRC}/README \
		${PREFIX}/share/doc/libutf8

.include <bsd.port.mk>
