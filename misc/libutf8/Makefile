# $OpenBSD: Makefile,v 1.8 2002/10/27 20:44:48 naddy Exp $

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

.include <bsd.port.mk>
