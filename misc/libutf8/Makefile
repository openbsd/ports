# $OpenBSD: Makefile,v 1.3 2001/03/28 22:18:35 naddy Exp $

COMMENT=	'provides UTF-8 locale support'

DISTNAME=	libutf8-0.7.3
CATEGORIES=     devel misc
NEED_VERSION=	1.364
MASTER_SITES=	ftp://ftp.ilog.fr/pub/Users/haible/utf8/ \
		ftp://ftp.shellhung.org/pub/OpenBSD/packages/devel/

MAINTAINER=	Shell Hung <i@shellhung.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static

.include <bsd.port.mk>
