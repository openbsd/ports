# OpenBSD makefile for:	xengine
# Version required:	pl1
# Date created:		Nov 27 1997
# Whom:			ejovi
#
# $OpenBSD: Makefile,v 1.2 1997/12/20 00:59:49 todd Exp $
#

PKGNAME=	xengine-1.0.1
CATEGORIES=	benchmarks x11
MASTER_SITES=	ftp://ftp.lab.kdd.co.jp/Usenet/comp.sources.x/volume09/xengine/
DISTFILES=	part01.z patch1.z

MAINTAINER=	joey@OpenBSD.ORG

BUILD_DEPENDS=	gunshar:${PORTSDIR}/archivers/gshar+gunshar

DIST_SUBDIR=	xengine
NO_WRKSUBDIR=	yes
USE_IMAKE=	yes

EXTRACT_CMD=		zcat
EXTRACT_BEFORE_ARGS= 
EXTRACT_AFTER_ARGS=	| ${SETENV} gunshar -d $(WRKDIR)
PATCH_DIST_STRIP=	-p1	# no ${PATCHFILES} but used below

pre-patch:
	@cd $(WRKSRC) ; ${PATCH} ${PATCH_DIST_ARGS} < xengine.patch1

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${PREFIX}/share/doc/xengine
	@${INSTALL_MAN} ${WRKSRC}/README ${PREFIX}/share/doc/xengine
.endif
	@${ECHO} ""
	@${ECHO} "Example value:"
	@${ECHO} "   1067 RPMs with P100, Winner 2000PRO/X, resolution: 1152x900"
	@${ECHO} ""

.include <bsd.port.mk>
