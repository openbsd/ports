# $OpenBSD: Makefile,v 1.5 2000/02/11 00:37:26 espie Exp $
# $FreeBSD: Makefile,v 1.5 1998/09/14 22:19:05 smace Exp $

DISTNAME=	jbigkit-1.1
CATEGORIES=	graphics
MASTER_SITES=	ftp://ftp.informatik.uni-erlangen.de/local/cip/mskuhn/ISO/JBIG/ \
		http://www.cl.cam.ac.uk/~mgk25/download/
NEED_VERSION=	1.191

MAINTAINER=	brad@openbsd.org

WRKDIST=	${WRKDIR}/jbigkit

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jbig
	${INSTALL_DATA} ${WRKSRC}/libjbig/jbig.doc ${PREFIX}/share/doc/jbig
	@${LDCONFIG} -m ${PREFIX}/lib

test:	build
	@cd ${WRKSRC} && env LD_LIBRARY_PATH="${WRKSRC}/libjbig" make test

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:U} == YES
MAKE_ENV=	NO_SHARED_LIBS=Yes
.endif
