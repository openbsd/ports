# $OpenBSD: Makefile,v 1.4 2001/01/19 18:26:06 brad Exp $

DISTNAME=	pth-1.3.7
CATEGORIES=	devel
NEED_VERSION=	1.336
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= pth

HOMEPAGE=	http://www.gnu.org/software/pth/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --enable-pthread --enable-syscall-soft \
		 --enable-optimize --enable-batch

test:	build
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} -f ${MAKE_FILE} test

.include <bsd.port.mk>
