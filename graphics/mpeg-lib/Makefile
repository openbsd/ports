# $OpenBSD: Makefile,v 1.9 1999/05/08 17:53:13 brad Exp $

DISTNAME=	mpeg_lib-1.2.1
CATEGORIES=	graphics

NEED_VERSION=	1.64

MAINTAINER=	marc@OpenBSD.ORG

MASTER_SITES=	ftp://ftp.mni.mcgill.ca/pub/mpeg/

HAS_CONFIGURE=	yes
CONFIGURE_ARGS=	--prefix=${PREFIX} ${CONFIGURE_SHARED}

WRKSRC=		${WRKDIR}/mpeg_lib

# post-patch must be defined before bsd.port.mk is included so it will
# be called.  However, we need to have the body of the target after
# bsd.port.mk is included so NO_SHARED_LIBS is defined.
# Define the target twice, using :
post-patch:

pre-install:
	@${MKDIR} -p ${PREFIX}/bin ${PREFIX}/lib ${PREFIX}/include

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>

# The patches assumed shared libs would be build.  If building
# on a host that does not support shared libs, e.g. the alpha,
# apply one more patch.
post-patch:
.if defined(NO_SHARED_LIBS)
	@(cd ${DISTDIR}; ${PATCH} ${PATCH_DIST_ARGS} < ${FILESDIR}/patch)
.endif
