# $OpenBSD: Makefile,v 1.6 1999/06/02 03:56:31 brad Exp $

PKGNAME=	xengine-1.0.1
CATEGORIES=	benchmarks x11
MASTER_SITES=	ftp://ftp.lab.kdd.co.jp/Usenet/comp.sources.x/volume09/xengine/
DISTFILES=	part01.z patch1.z

NO_CDROM=	"NOFEE:	Can not sell"

MAINTAINER=	marc@OpenBSD.ORG

DIST_SUBDIR=	xengine
EXTRACT_CMD=	zcat
EXTRACT_BEFORE_ARGS= 
EXTRACT_AFTER_ARGS=	| ${SETENV} gunshar -d $(WRKDIR)
PATCH_DIST_STRIP=	-p1	# no ${PATCHFILES} but used below

BUILD_DEPENDS=	gunshar:${PORTSDIR}/archivers/gshar+gunshar

NO_WRKSUBDIR=	yes
USE_IMAKE=	yes

pre-patch:
	@cd $(WRKSRC) ; ${PATCH} ${PATCH_DIST_ARGS} < xengine.patch1

post-install:
	@${MKDIR} ${PREFIX}/share/doc/xengine
	@${INSTALL_MAN} ${WRKSRC}/README ${PREFIX}/share/doc/xengine
	@${ECHO} ""
	@${ECHO} "Example value:"
	@${ECHO} "   1067 RPMs with P100, Winner 2000PRO/X, resolution: 1152x900"
	@${ECHO} ""

.include <bsd.port.mk>
