# $OpenBSD: Makefile,v 1.2 1999/12/27 06:12:08 brad Exp $
# $FreeBSD: Makefile,v 1.5 1998/09/14 22:19:05 smace Exp $

DISTNAME=	jbigkit-1.1
CATEGORIES=	graphics
MASTER_SITES=	ftp://ftp.informatik.uni-erlangen.de/pub/doc/ISO/JBIG/

MAINTAINER=	brad@openbsd.org

WRKSRC=	${WRKDIR}/jbigkit

post-install:
	@mkdir -p ${PREFIX}/share/doc/jbig
	${INSTALL_DATA} ${WRKSRC}/libjbig/jbig.doc ${PREFIX}/share/doc/jbig
	@${LDCONFIG} -m ${PREFIX}/lib

test:	build
	cd ${WRKSRC} && env LD_LIBRARY_PATH=${WRKSRC}/libjbig make test

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:U} == YES
MAKE_ENV=	NO_SHARED_LIBS=Yes
.endif
