# $OpenBSD: Makefile,v 1.15 1999/12/28 23:37:32 brad Exp $

DISTNAME=	bzip2-0.9.5d
CATEGORIES=	archivers
MASTER_SITES=	ftp://sourceware.cygnus.com/pub/bzip2/v095/ \
		http://www.bzip2.org/bzip2/v095/

MAINTAINER=	angelos@openbsd.org

post-install:
	@${LDCONFIG} -m ${PREFIX}/lib

test:   build
	@cd ${WRKSRC} && env LD_LIBRARY_PATH=${WRKSRC} make test

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:U} == YES
MAKE_ENV=	NO_SHARED_LIBS=Yes
.endif
