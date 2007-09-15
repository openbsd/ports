# $OpenBSD: Makefile,v 1.22 2007/09/15 21:36:57 simon Exp $

COMMENT=	Simulation Program for Integrated Circuit Electronics

DISTNAME=		sp3f4.kit
PKGNAME=		spice-3f5p1
CATEGORIES=     	cad

PERMIT_PACKAGE_CDROM=	no fee
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	no fee
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xaw Xext Xmu Xt c m termlib

MASTER_SITES=		ftp://ic.eecs.berkeley.edu/pub/Spice3/
DISTFILES=		sp3f4.kit.tar.gz sp3f4.patch.tar.gz

USE_X11=		Yes
WRKDIST=		${WRKDIR}
MAKE_ENV=		MAKE_PROGRAM='${MAKE_PROGRAM}' CC="${CC}"

NO_REGRESS=		Yes

# Apply the patches that make this 3f5
#
pre-patch:
	@${ECHO_MSG} "===>  Applying distribution patches";
.if defined(PATCH_DEBUG)
	@cd ${WRKDIR}/3f4patches; \
	  ${PATCH} -d ${WRKSRC}/src/lib/fte -E -p1 < grid.patch; \
	  ${PATCH} -d ${WRKSRC}/src/lib/fte -E -p1 < newcoms.patch; \
	  ${PATCH} -d ${WRKSRC}/src/lib/sparse -E -p1 < spsmp.patch
	@find ${WRKSRC}/ -name \*.orig -exec rm -f {} \;
.else
	@cd ${WRKDIR}/3f4patches; \
	  ${PATCH} -d ${WRKSRC}/src/lib/fte -N -s -E -p1 < grid.patch; \
	  ${PATCH} -d ${WRKSRC}/src/lib/fte -N -s -E -p1 < newcoms.patch; \
	  ${PATCH} -d ${WRKSRC}/src/lib/sparse -N -s -E -p1 < spsmp.patch
	@find ${WRKSRC}/ -name \*.orig -exec rm -f {} \;
.endif

do-configure:
	@cp ${FILESDIR}/Makefile ${WRKSRC}
	@cp ${FILESDIR}/OpenBSD ${WRKSRC}/conf

.include <bsd.port.mk>
