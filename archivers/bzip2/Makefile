# $OpenBSD: Makefile,v 1.27 2000/07/01 02:00:52 brad Exp $

DISTNAME=	bzip2-1.0.1
CATEGORIES=	archivers
NEED_VERSION=	1.310
MASTER_SITES=	ftp://sourceware.cygnus.com/pub/bzip2/v100/ \
		ftp://ftp.yggdrasil.com/mirrors/site/sourceware.cygnus.com/pub/bzip2/v100/

HOMEPAGE=	http://sourceware.cygnus.com/bzip2/

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=	Yes
MAKE_FLAGS=	PREFIX="${PREFIX}" CC="${CC}" \
		CFLAGS="${CFLAGS} -Wall -Winline -fomit-frame-pointer \
		-fno-strength-reduce"
FAKE_FLAGS=	PREFIX="${PREFIX}" DESTDIR="${WRKINST}"

test:   build
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} -f ${MAKE_FILE} test

.include <bsd.port.mk>
