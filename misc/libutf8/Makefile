# $OpenBSD: Makefile,v 1.9 2003/02/09 22:27:01 lebel Exp $

COMMENT=	"provides UTF-8 locale support"

DISTNAME=	libutf8-0.7.3
CATEGORIES=     misc devel

MASTER_SITES=	ftp://ftp.ilog.fr/pub/Users/haible/utf8/ \
		ftp://ftp.shellhung.org/pub/OpenBSD/packages/devel/

MAINTAINER=	Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC} ${WRKSRC}/autoconf

# gcc3
MODULES=                gcc3
MODGCC3_ARCHES=         sparc64

.include <bsd.port.mk>
