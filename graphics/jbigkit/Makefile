# $OpenBSD: Makefile,v 1.1.1.1 1999/05/08 19:17:39 brad Exp $
# $FreeBSD: Makefile,v 1.5 1998/09/14 22:19:05 smace Exp $

DISTNAME=	jbigkit-1.0
CATEGORIES=	graphics
MASTER_SITES=	ftp://ftp.informatik.uni-erlangen.de/pub/doc/ISO/JBIG/

MAINTAINER=	brad@openbsd.org

WRKSRC=		${WRKDIR}/jbigkit

# post-patch must be defined before bsd.port.mk is included so it will
# be called.  However, we need to have the body of the target after
# bsd.port.mk is included so NO_SHARED_LIBS is defined.
# Define the target twice, using :
post-patch:

post-install:
	${MKDIR} ${PREFIX}/share/doc/jbig
	${INSTALL_DATA} ${WRKSRC}/libjbig/jbig.doc ${PREFIX}/share/doc/jbig
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>

# The patches assumed shared libs would be build.  If building
# on a host that does not support shared libs, e.g. the alpha,
# apply one more patch.
post-patch:
.if defined(NO_SHARED_LIBS)
	@(cd ${DISTDIR}; ${PATCH} ${PATCH_DIST_ARGS} < ${FILESDIR}/patch)
.endif
