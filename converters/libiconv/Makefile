# $OpenBSD: Makefile,v 1.5 2001/08/27 13:17:16 brad Exp $

COMMENT=	"character set conversion library"

DISTNAME=	libiconv-1.7
CATEGORIES=	converters devel
NEED_VERSION=	1.435
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= libiconv

HOMEPAGE=	http://clisp.cons.org/~haible/packages-libiconv.html

MAINTAINER=	Vladimir Popov <pva48@mail.ru>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

test:	build
	@cd ${WRKBUILD} && ${MAKE_PROGRAM} check

.include <bsd.port.mk>
