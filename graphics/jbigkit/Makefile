# $OpenBSD: Makefile,v 1.12 2000/06/10 05:51:59 brad Exp $
# $FreeBSD: Makefile,v 1.5 1998/09/14 22:19:05 smace Exp $

DISTNAME=	jbigkit-1.1
CATEGORIES=	graphics
NEED_VERSION=	1.234
MASTER_SITES=	ftp://ftp.informatik.uni-erlangen.de/local/cip/mskuhn/ISO/JBIG/ \
		http://www.cl.cam.ac.uk/~mgk25/download/

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes

MAKE_FLAGS=	CC="${CC}" CCFLAGS="${CFLAGS} -Wall"

WRKDIST=	${WRKDIR}/jbigkit

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jbig
	${INSTALL_DATA} ${WRKSRC}/libjbig/jbig.doc ${PREFIX}/share/doc/jbig

test:	build
	@cd ${WRKBUILD} && ${SETENV} LD_LIBRARY_PATH="${WRKBUILD}/libjbig" ${MAKE} ${MAKE_FLAGS} -f ${MAKE_FILE} test

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:U} == YES
MAKE_ENV=	NO_SHARED_LIBS=Yes
.endif
