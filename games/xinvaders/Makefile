# OpenBSD makefile for: xinvaders
# Version required:     2.0
# Date created:         May 19 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.2 1998/09/25 22:49:19 pjanzen Exp $
#

DISTNAME=       xinvaders
PKGNAME=	xinvaders-2.0
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.uu.net/usenet/comp.sources.x/volume19/xinvaders/ \
		ftp://unix.hensa.ac.uk/archive/usenet/comp.sources.x/volume19/xinvaders/
DISTFILES=	part01.Z part02.Z part03.Z

MAINTAINER=	pjanzen@openbsd.org

BUILD_DEPENDS=	gunshar:${PORTSDIR}/archivers/gshar+gunshar

DIST_SUBDIR=	xinvaders
NO_WRKSUBDIR=	yes

NO_CDROM=	"don't sell for profit"
USE_IMAKE=	yes

EXTRACT_CMD=            zcat
EXTRACT_BEFORE_ARGS=
EXTRACT_AFTER_ARGS=	| ${SETENV} gunshar -d $(WRKDIR)

pre-patch:
	@cd $(WRKSRC) ; mv xinvaders.ma xinvaders.man

.include <bsd.port.mk>
