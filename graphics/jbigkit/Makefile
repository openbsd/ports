# $OpenBSD: Makefile,v 1.24 2004/01/11 08:20:06 brad Exp $

COMMENT=	"lossless image compression library"

DISTNAME=	jbigkit-1.2
CATEGORIES=	graphics
MASTER_SITES=	ftp://ftp.informatik.uni-erlangen.de/local/cip/mskuhn/ISO/JBIG/ \
		http://www.cl.cam.ac.uk/~mgk25/download/

MAINTAINER=	Brad Smith <brad@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	LD_LIBRARY_PATH="${WRKSRC}/libjbig"
MAKE_FLAGS=	CC="${CC}" CCFLAGS="${CFLAGS} -Wall"
FAKE_FLAGS=	${MAKE_FLAGS}

WRKDIST=	${WRKDIR}/jbigkit

REGRESS_TARGET=	test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jbig
	${INSTALL_DATA} ${WRKSRC}/libjbig/jbig.doc ${PREFIX}/share/doc/jbig

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
MAKE_ENV+=	NO_SHARED_LIBS=Yes
.endif
