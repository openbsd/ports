# $OpenBSD: Makefile,v 1.9 2001/10/10 19:01:38 brad Exp $

COMMENT=	"character set conversion library"

DISTNAME=	libiconv-1.7
CATEGORIES=	converters devel
NEED_VERSION=	1.460
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= libiconv

HOMEPAGE=	http://www.gnu.org/software/libiconv/

MAINTAINER=	Vladimir Popov <pva48@mail.ru>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/autoconf ${WRKSRC}/libcharset/autoconf
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

.include <bsd.port.mk>
