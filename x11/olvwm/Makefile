# $OpenBSD: Makefile,v 1.29 2006/09/18 10:21:49 espie Exp $

COMMENT=	"OpenLook Virtual Window manager"

DISTNAME=	olvwm4
PKGNAME=	olvwm-4.2
CATEGORIES=	x11

MASTER_SITES=	${MASTER_SITE_R5CONTRIB}
DISTFILES=	olvwm4.tar.Z

MAINTAINER=	Ian Darwin <ian@openbsd.org>

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"
WANTLIB=		X11 Xext Xpm c m 

# The Patch01 and Patch02 patches are included in the patches directory.
#
# MASTER_SITES0 = ftp://ftp.freesoftware.com/pub/X11/contrib/window_managers
# PATCHFILES=	olvwm4.Patch01.Z:0 olvwm4.Patch02.Z:0
# PATCH_DIST_STRIP=	-p1

LIB_DEPENDS=	xview.>=3,olgx.>=3::x11/xview/lib
BUILD_DEPENDS=	::x11/xview/config

USE_X11=	Yes

CONFIGURE_STYLE=imake
MAKE_ENV=	IMAKEINCLUDE=-I${LOCALBASE}/lib/X11/config

WRKDIST=	${WRKDIR}

NO_REGRESS=	Yes

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
