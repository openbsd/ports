# $OpenBSD: Makefile,v 1.10 1999/05/09 01:40:06 brad Exp $

DISTNAME=	bzip2-0.9.0c
PKGNAME=	bzip2-0.9.0c
CATEGORIES=	archivers

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	http://www.digistar.com/bzip2/ \
		http://www.muraroa.demon.co.uk/

VER=0.9

MAKE_ENV=	VER=${VER}

# post-patch must be defined before bsd.port.mk is included so it will
# be called.  However, we need to have the body of the target after
# bsd.port.mk is included so NO_SHARED_LIBS is defined.
# Define the target twice, using :
post-patch:

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bzip2 ${PREFIX}/bin
	ln -sf ${PREFIX}/bin/bzip2 ${PREFIX}/bin/bunzip2
	ln -sf ${PREFIX}/bin/bzip2 ${PREFIX}/bin/bzcat
	${INSTALL_PROGRAM} ${WRKSRC}/bzip2recover ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/bzlib.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/libbz2.a ${PREFIX}/lib
	@if [ -f ${WRKSRC}/libbz2.so.${VER} ]; then \
	${INSTALL_DATA} ${WRKSRC}/libbz2.so.${VER} ${PREFIX}/lib; \
	fi
	${INSTALL_MAN} ${WRKSRC}/bzip2.1 ${PREFIX}/man/man1
	ln -f ${PREFIX}/man/man1/bzip2.1 ${PREFIX}/man/man1/bunzip2.1
	ln -f ${PREFIX}/man/man1/bzip2.1 ${PREFIX}/man/man1/bzcat.1
	ln -f ${PREFIX}/man/man1/bzip2.1 ${PREFIX}/man/man1/bzip2recover.1
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>

# The patches assumed shared libs would be build.  If building
# on a host that does not support shared libs, e.g. the alpha,
# apply one more patch.
post-patch:
.if defined(NO_SHARED_LIBS)
	@(cd ${DISTDIR}; ${PATCH} ${PATCH_DIST_ARGS} < ${FILESDIR}/patch)
.endif
