# $OpenBSD: Makefile,v 1.6 2000/03/12 18:02:32 turan Exp $

DISTNAME=		sp3f4.kit
PKGNAME=		spice-3f5
CATEGORIES=     	cad

MAINTAINER=		ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ic.eecs.berkeley.edu/pub/Spice3/
DISTFILES=		sp3f4.kit.tar.Z sp3f4.patch.tar.Z
NEED_VERSION=		1.191

USE_X11=		yes
WRKDIST=		${WRKDIR}

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
