# $OpenBSD: Makefile,v 1.21 2000/03/24 22:11:33 espie Exp $

DISTNAME=	bzip2-0.9.5d
CATEGORIES=	archivers
NEED_VERSION=	1.218
MASTER_SITES=	ftp://sourceware.cygnus.com/pub/bzip2/v095/ \
                ftp://ftp.yggdrasil.com/mirrors/site/sourceware.cygnus.com/pub/bzip2/v095/      


MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes

MAKE_FLAGS=	CC="${CC}" \
		CFLAGS="${CFLAGS} -Wall -Winline -fomit-frame-pointer \
		-fno-strength-reduce"

FAKE_FLAGS=	PREFIX="${WRKINST}${PREFIX}"

test:   build
	@cd ${WRKSRC} && env LD_LIBRARY_PATH="${WRKSRC}" make test

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:U} == YES
MAKE_ENV=	NO_SHARED_LIBS=	Yes
.endif
