# $OpenBSD: Makefile,v 1.7 1999/04/06 01:11:39 marc Exp $
#

DISTNAME=	mpeg_lib-1.2.1
CATEGORIES=	graphics

NEED_VERSION=	1.64

MAINTAINER=	marc@OpenBSD.ORG

MASTER_SITES=	ftp://ftp.mni.mcgill.ca/pub/mpeg/

HAS_CONFIGURE=	yes
CONFIGURE_ARGS=	--prefix=${PREFIX} ${CONFIGURE_SHARED}

WRKSRC=		${WRKDIR}/mpeg_lib


pre-install:
	@${MKDIR} -p ${PREFIX}/bin ${PREFIX}/lib ${PREFIX}/include

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>

# The patches assumed shared libs would be build.  If building
# on a host that does not support shared libs, e.g. the alpha,
# apply one more patch.
#
.if defined(NO_SHARED_LIBS)
post-patch:
	@(cd ${DISTDIR}; ${PATCH} ${PATCH_DIST_ARGS} < ${FILESDIR}/patch)
.endif
