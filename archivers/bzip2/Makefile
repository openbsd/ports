# $OpenBSD: Makefile,v 1.35 2001/08/26 21:23:42 heko Exp $

COMMENT=	"block-sorting file compressor, unencumbered"

DISTNAME=	bzip2-1.0.1
CATEGORIES=	archivers
NEED_VERSION=	1.444
MASTER_SITES=	${MASTER_SITE_SOURCEWARE}
MASTER_SITE_SUBDIR=bzip2/v100
HOMEPAGE=	http://sourceware.cygnus.com/bzip2/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -Wall -Winline \
		-fomit-frame-pointer -fno-strength-reduce"
FAKE_FLAGS=	${MAKE_FLAGS} PREFIX="${PREFIX}" DESTDIR="${WRKINST}"

test:   build
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} \
		LD_LIBRARY_PATH="${WRKBUILD}" ${MAKE} ${MAKE_FLAGS} -f \
			${MAKE_FILE} test

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
MAKE_ENV+=	NO_SHARED_LIBS=Yes
.endif
