# $OpenBSD: Makefile,v 1.5 2000/03/05 18:30:27 espie Exp $
#

DISTNAME=       xinvaders
DIST_SUBDIR=	xinvaders
PKGNAME=	xinvaders-2.0
CATEGORIES=	games
NEED_VERSION=	1.223

NO_CDROM=	"don't sell for profit"

MAINTAINER=	pjanzen@openbsd.org

MASTER_SITES=	ftp://ftp.uu.net/usenet/comp.sources.x/volume19/xinvaders/ \
		ftp://unix.hensa.ac.uk/archive/usenet/comp.sources.x/volume19/xinvaders/
DISTFILES=	part01.Z part02.Z part03.Z
EXTRACT_CMD=            zcat
EXTRACT_BEFORE_ARGS=
EXTRACT_AFTER_ARGS=	| ${SETENV} gunshar -d $(WRKDIR)

BUILD_DEPENDS=	gunshar:archivers/gshar+gunshar

USE_IMAKE=	Yes

WRKDIST=	${WRKDIR}

pre-patch:
	@cd $(WRKSRC) ; mv xinvaders.ma xinvaders.man

.include <bsd.port.mk>
