# $OpenBSD: Makefile,v 1.13 2000/08/20 20:16:15 pjanzen Exp $

PKGNAME=	xengine-1.0.1
CATEGORIES=	benchmarks x11
NEED_VERSION=	 1.230
MASTER_SITES=	ftp://ftp.lab.kdd.co.jp/Usenet/comp.sources.x/volume09/xengine/
DISTFILES=	part01.z patch1.z

MAINTAINER=	pjanzen@openbsd.org

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes
FAKE=			Yes

DIST_SUBDIR=	xengine
EXTRACT_CMD=	zcat
EXTRACT_BEFORE_ARGS= 
EXTRACT_AFTER_ARGS=	| ${SETENV} gunshar -d $(WRKDIR)
PATCH_DIST_STRIP=	-p1	# no ${PATCHFILES} but used below

BUILD_DEPENDS=	gunshar::archivers/gshar+gunshar

WRKDIST=	${WRKDIR}
USE_IMAKE=	yes

pre-patch:
	@cd $(WRKSRC) ; ${PATCH} ${PATCH_DIST_ARGS} < xengine.patch1

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xengine
	@${INSTALL_MAN} ${WRKSRC}/README ${PREFIX}/share/doc/xengine
	@echo ""
	@echo "Example value:"
	@echo "   1067 RPMs with P100, Winner 2000PRO/X, resolution: 1152x900"
	@echo ""

.include <bsd.port.mk>
