# $OpenBSD: Makefile,v 1.3 1999/02/11 23:31:14 marc Exp $
#

DISTNAME=	olvwm4
PKGNAME=	olvwm-4.1
CATEGORIES=	x11-wm
MASTER_SITES=	ftp://ftp.x.org/R5contrib/
DISTFILES=	olvwm4.tar.Z

MAINTAINER= ian@openbsd.org

# The Patch01 patch is included in the patches directory.
# PATCH_SITES=	${MASTER_SITES}
# PATCHFILES=	olvwm4.Patch01.Z
# PATCH_DIST_STRIP=	-p1

LIB_DEPENDS=	xview\\.3\\.:${PORTSDIR}/x11/xview-lib

NO_WRKSUBDIR=	yes
USE_IMAKE=	yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/olvwm ${PREFIX}/bin
	${INSTALL_DATA}    ${WRKSRC}/olvwm.info ${PREFIX}/lib/help/olvwm.info
	nroff -mandoc ${WRKSRC}/olvwm.man > ${WRKSRC}/olvwm.cat1
	nroff -mandoc ${WRKSRC}/olvwmrc.man > ${WRKSRC}/olvwmrc.cat1
	${INSTALL_MAN} ${WRKSRC}/olvwm.cat1 ${PREFIX}/man/cat1/olvwm.0
	${INSTALL_MAN} ${WRKSRC}/olvwmrc.cat1 ${PREFIX}/man/cat1/olvwmrc.0

.include <bsd.port.mk>
