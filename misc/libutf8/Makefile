# $OpenBSD: Makefile,v 1.13 2005/09/23 19:41:44 pvalchev Exp $

COMMENT=	"provides UTF-8 locale support"

DISTNAME=	libutf8-0.7.3
PKGNAME=	${DISTNAME}p0
CATEGORIES=     misc devel

MASTER_SITES=	ftp://ftp.ilog.fr/pub/Users/haible/utf8/ \
		ftp://ftp.shellhung.org/pub/OpenBSD/packages/devel/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autoconf

.include <bsd.port.mk>
