# $OpenBSD: Makefile,v 1.15 2000/04/04 21:51:41 espie Exp $

DISTNAME=	olvwm4
PKGNAME=	olvwm-4.2
CATEGORIES=	x11
NEED_VERSION=	1.230
MASTER_SITES=	ftp://ftp.x.org/R5contrib/
DISTFILES=	olvwm4.tar.Z

MAINTAINER=	ian@openbsd.org

PERMIT_PACKAGE_CDROM=	"missing license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"missing license"
PERMIT_DISTFILES_FTP=	Yes

# The Patch01 and Patch02 patches are included in the patches directory.
#
# MASTER_SITES0 = ftp://ftp.freesoftware.com/pub/X11/contrib/window_managers
# PATCHFILES=	olvwm4.Patch01.Z:0 olvwm4.Patch02.Z:0
# PATCH_DIST_STRIP=	-p1

LIB_DEPENDS=	xview.3.::x11/xview/lib
BUILD_DEPENDS=	${LOCALBASE}/lib/X11/config/XView.cf::x11/xview/config

USE_IMAKE=	Yes
FAKE=		Yes
MAKE_ENV=	IMAKEINCLUDE=-I${LOCALBASE}/lib/X11/config

WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_PROGRAM_DIR}	${PREFIX}/bin
	${INSTALL_DATA_DIR}	${PREFIX}/lib/help
	${INSTALL_MAN_DIR}	${PREFIX}/man/cat1
	${INSTALL_PROGRAM} ${WRKSRC}/olvwm ${PREFIX}/bin
	${INSTALL_DATA}    ${WRKSRC}/olvwm.info ${PREFIX}/lib/help/olvwm.info
	nroff -mandoc ${WRKSRC}/olvwm.man > ${WRKSRC}/olvwm.cat1
	nroff -mandoc ${WRKSRC}/olvwmrc.man > ${WRKSRC}/olvwmrc.cat1
	${INSTALL_MAN} ${WRKSRC}/olvwm.cat1 ${PREFIX}/man/cat1/olvwm.0
	${INSTALL_MAN} ${WRKSRC}/olvwmrc.cat1 ${PREFIX}/man/cat1/olvwmrc.0

.include <bsd.port.mk>
