# $OpenBSD: Makefile,v 1.29 2000/09/24 01:23:42 brad Exp $

DISTNAME=	bzip2-1.0.1
CATEGORIES=	archivers
NEED_VERSION=	1.310
MASTER_SITES=	ftp://sourceware.cygnus.com/pub/bzip2/v100/ \
		ftp://ftp.yggdrasil.com/mirrors/site/sourceware.cygnus.com/pub/bzip2/v100/

HOMEPAGE=	http://sourceware.cygnus.com/bzip2/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -Wall -Winline \
		-fomit-frame-pointer -fno-strength-reduce"
FAKE_FLAGS+=	${MAKE_FLAGS} PREFIX="${PREFIX}" DESTDIR="${WRKINST}"

test:   build
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} LD_LIBRARY_PATH="${WRKSRC}" \
		${MAKE} ${MAKE_FLAGS} -f ${MAKE_FILE} test

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
MAKE_ENV=	NO_SHARED_LIBS=Yes
.endif
