# OpenBSD makefile for:	spice
# Version required:	3f5
# Date created:		1998-Jun-03
# Whom:			marc@OpenBSD.ORG
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/06/03 23:02:24 marc Exp $
#

# What port/package will be created
#
DISTNAME=		sp3f4.kit
PKGNAME=		spice-3f5
CATEGORIES=     	cad

# where to send bitches about this port
#
MAINTAINER=		marc@openbsd.org

# where the source files and patches can be fetched
#
MASTER_SITES=		ftp://ic.eecs.berkeley.edu/pub/Spice3/
DISTFILES=		sp3f4.kit.tar.Z sp3f4.patch.tar.Z

# How to extract the sources
#
EXTRACT_SUFX=		.tar.Z

# build/configuration variables
#
USE_X11=		yes

# Things that we don't want to do for this port/package
#
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
