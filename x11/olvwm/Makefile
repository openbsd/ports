# $OpenBSD: Makefile,v 1.5 1999/07/17 11:00:41 matthieu Exp $
#

DISTNAME=	olvwm4
PKGNAME=	olvwm-4.2
CATEGORIES=	x11-wm
MASTER_SITES=	ftp://ftp.x.org/R5contrib/
DISTFILES=	olvwm4.tar.Z

MAINTAINER= ian@openbsd.org

# The Patch01 and Patch02 patches are included in the patches directory.
# PATCH_SITES=	${MASTER_SITES} ftp://ftp.cdrom.com/X11/contrib/window_managers
# PATCHFILES=	olvwm4.Patch01.Z olvwm4.Patch02.Z
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
