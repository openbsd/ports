# $OpenBSD: Makefile,v 1.20 2000/09/24 07:04:03 brad Exp $
# $FreeBSD: Makefile,v 1.2 1999/03/28 11:55:25 rse Exp $

DISTNAME=	mm-1.1.3
CATEGORIES=	devel
NEED_VERSION=	1.330
MASTER_SITES=	http://www.engelschall.com/sw/mm/ \
		ftp://ftp.engelschall.com/sw/mm/

HOMEPAGE=	http://www.engelschall.com/sw/mm/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-build:
	@${ECHO_MSG} "===>  Use 'make test' to run a quick test suite."

test:	build
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} -f ${MAKE_FILE} test

.include <bsd.port.mk>
