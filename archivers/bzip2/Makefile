# $OpenBSD: Makefile,v 1.17 2000/02/12 06:29:49 turan Exp $

DISTNAME=	bzip2-0.9.5d
CATEGORIES=	archivers
MASTER_SITES=	ftp://sourceware.cygnus.com/pub/bzip2/v095/ \
                ftp://ftp.yggdrasil.com/mirrors/site/sourceware.cygnus.com/pub/bzip2/v095/      

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

post-install:
	@${LDCONFIG} -m ${PREFIX}/lib

test:   build
	@cd ${WRKSRC} && env LD_LIBRARY_PATH=${WRKSRC} make test

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:U} == YES
MAKE_ENV=	NO_SHARED_LIBS=Yes
.endif
