# OpenBSD makefile for:	mpeg_lib
# Version required:	1.2.1
# Date created:		December 17, 1997
# Whom:			Don Schmidt
#
# $OpenBSD: Makefile,v 1.2 1998/06/30 22:29:09 marc Exp $
#

DISTNAME=	mpeg_lib-1.2.1
CATEGORIES=	graphics

MAINTAINER=	marc@OpenBSD.ORG

MASTER_SITES=	ftp://ftp.mni.mcgill.ca/pub/mpeg/

GNU_CONFIGURE=	yup
CONFIGURE_ENV=	${SETENV}

WRKSRC=		${WRKDIR}/mpeg_lib


# The patches assumed shared libs would be build.  If building
# on a host that does not support shared libs, e.g. the alpha,
# apply one more patch.
#
.if (${MACHINE_ARCH} == "alpha")
post-patch:
	@(cd ${DISTDIR}; ${PATCH} ${PATCH_DIST_ARGS} < ${FILESDIR}/patch)
.endif

pre-install:
	@${MKDIR} -p ${PREFIX}/bin ${PREFIX}/lib ${PREFIX}/include

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
