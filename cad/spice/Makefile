# $OpenBSD: Makefile,v 1.2 1998/10/07 05:03:28 marc Exp $
#

DISTNAME=		sp3f4.kit
PKGNAME=		spice-3f5
CATEGORIES=     	cad

MAINTAINER=		marc@openbsd.org

MASTER_SITES=		ftp://ic.eecs.berkeley.edu/pub/Spice3/
DISTFILES=		sp3f4.kit.tar.Z sp3f4.patch.tar.Z

USE_X11=		yes
NO_WRKSUBDIR=		yes

# Apply the patches that make this 3f5
#
pre-patch:
	@${ECHO_MSG} "===>  Applying distribution patches";
.if defined(PATCH_DEBUG)
	@(cd ${WRKDIR}/3f4patches; \
	  ${PATCH} -d ${WRKSRC}/src/lib/fte -E -p1 < grid.patch; \
	  ${PATCH} -d ${WRKSRC}/src/lib/fte -E -p1 < newcoms.patch; \
	  ${PATCH} -d ${WRKSRC}/src/lib/sparse -E -p1 < spsmp.patch)
.else
	@(cd ${WRKDIR}/3f4patches; \
	  ${PATCH} -d ${WRKSRC}/src/lib/fte -N -s -E -p1 < grid.patch; \
	  ${PATCH} -d ${WRKSRC}/src/lib/fte -N -s -E -p1 < newcoms.patch; \
	  ${PATCH} -d ${WRKSRC}/src/lib/sparse -N -s -E -p1 < spsmp.patch)
.endif

.include <bsd.port.mk>
