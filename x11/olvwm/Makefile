# $OpenBSD: Makefile,v 1.11 2000/03/23 23:09:03 turan Exp $

BROKEN=		depend xview is broken

DISTNAME=	olvwm4
PKGNAME=	olvwm-4.2
CATEGORIES=	x11-wm
NEED_VERSION=	1.223
MASTER_SITES=	ftp://ftp.x.org/R5contrib/
DISTFILES=	olvwm4.tar.Z

MAINTAINER= ian@openbsd.org

PERMIT_PACKAGE_CDROM=	"missing license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"missing license"
PERMIT_DISTFILES_FTP=	Yes

# The Patch01 and Patch02 patches are included in the patches directory.
#
# MASTER_SITES0 = ftp://ftp.cdrom.com/X11/contrib/window_managers
# PATCHFILES=	olvwm4.Patch01.Z:0 olvwm4.Patch02.Z:0
# PATCH_DIST_STRIP=	-p1

LIB_DEPENDS=	xview.3.:x11/xview-lib

WRKDIST=	${WRKDIR}
USE_IMAKE=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/olvwm ${PREFIX}/bin
	${INSTALL_DATA}    ${WRKSRC}/olvwm.info ${PREFIX}/lib/help/olvwm.info
	nroff -mandoc ${WRKSRC}/olvwm.man > ${WRKSRC}/olvwm.cat1
	nroff -mandoc ${WRKSRC}/olvwmrc.man > ${WRKSRC}/olvwmrc.cat1
	${INSTALL_MAN} ${WRKSRC}/olvwm.cat1 ${PREFIX}/man/cat1/olvwm.0
	${INSTALL_MAN} ${WRKSRC}/olvwmrc.cat1 ${PREFIX}/man/cat1/olvwmrc.0

.include <bsd.port.mk>
